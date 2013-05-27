class Customer < ActiveRecord::Base
  attr_accessible :contact_name, :customer_number, :email, :phone, :postal_code, :province, :restaurant_name, :street_address
  has_many :surveys


  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
	  Customer.create! row.to_hash  
  end
end
