class Company < ActiveRecord::Base
  has_many :shipments
end
