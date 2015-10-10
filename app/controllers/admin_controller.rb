class AdminController < ApplicationController
  before_filter :authenticate_user!
  before_filter :redirect_unless_admin

  private

  def redirect_unless_admin
    unless current_user && current_user.admin?
      redirect_to home_index_path
    end
  end

end