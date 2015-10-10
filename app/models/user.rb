class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLES = %w(user admin)

  validates :role, inclusion: { in: ROLES }

  def admin?
    role == 'admin'
  end

  def set_admin_role
    self.update(role: 'admin')
  end

  def set_user_role
    self.update(role: 'user')
  end

  def self.create_user(params)
    User.new(:email => params["user"]["email"], :password => params["user"]["password"], :role => params["user"]["role"])
  end
end
