class Customer < ActiveRecord::Base
  attr_accessible :contact_name, :customer_number, :email, :phone, :postal_code, :province, :restaurant_name, :street_address
  has_many :surveys

  def self.to_csv(options = {})
  	CSV.generate(options) do |csv|
  		csv << column_names
  		all.each do |customer|
  			csv << customer.attributes.values_at(*column_names)
  		end
  	end
  end			

  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
	  Customer.create! row.to_hash  
	end
  end
end
