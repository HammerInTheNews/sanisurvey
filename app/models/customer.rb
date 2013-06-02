class Customer < ActiveRecord::Base
  attr_accessible :contact_name, :customer_number, :email, :phone, :postal_code, :province, :restaurant_name, :street_address, :city
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
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      customers = find_by_id(row["id"]) || new
      customers.attributes = row.to_hash.slice(*accessible_attributes)
      customers.save!
    end
  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when '.csv' then Roo::Csv.new(file.path, nil, :ignore)
    when '.xls' then Roo::Excel.new(file.path, nil, :ignore)
    when '.xlsx' then Roo::Excelx.new(file.path, nil, :ignore)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end
end
