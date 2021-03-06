class Survey < ActiveRecord::Base
  attr_accessible :capac_of_fryer, :chicken_fat, :comments_equip, :comments_recupe, :customer_id, :date, :desired_location, :desired_map, :freq_of_disposal, :grease_trap_service, :grill_plate, :install_electicity_outside, :integrated_solution, :kind_of_oil, :location, :location_map, :number_of_fryers, :organic_pu, :outdoor_electricity, :present_equip, :suggested_equip, :user_id, :image
  
  belongs_to :admin
  belongs_to :customer
  has_attached_file :image, 
    :styles => { :medium => "160x160>", :thumb => "180x180>", :large => "660x660>" }, 
    :default_url => "/images/:style/missing.png",
    :storage => :s3, s3_credentials: {access_key_id: "AKIAJQFILE7GM3P4IOUA",
    secret_access_key: "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",
    bucket: "surveymax"} 




  # def self.to_csv(options = {})
    	# CSV.generate(options) do |csv|
    	# 	csv << column_names
    	# 	all.each do |survey|
    	# 		csv << survey.attributes.values_at(*column_names)
    	# 	end
    	# end
  # end		


  def self.to_csv(options = {})
    #s = Survey.find(:all, :joins => :customer, :select => ['surveys.id', :customer_id, :restaurant_name])
    s = Survey.find(:all, :joins => :customer, :select => 'customer_number, restaurant_name, city, surveys.*')

    columns_headings = ["customer_number", "restaurant_name", "city"] + Survey.column_names
    #columns_headings = columns_headings - ['customer_id']

    CSV.generate(options) do |csv|
      csv << columns_headings
      s.each do |survey|
        csv << survey.attributes.values_at(*columns_headings)
      end
    end
  end


end
