class Customer < ActiveRecord::Base
  attr_accessible :contact_name, :customer_number, :email, :phone, :postal_code, :province, :restaurant_name, :street_address
  has_many :surveys
end
