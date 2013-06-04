class Survey < ActiveRecord::Base
  attr_accessible :capac_of_fryer, :chicken_fat, :comments_equip, :comments_recupe, :customer_id, :date, :desired_location, :desired_map, :freq_of_disposal, :grease_trap_service, :grill_plate, :install_electicity_outside, :integrated_solution, :kind_of_oil, :location, :location_map, :number_of_fryers, :organic_pu, :outdoor_electricity, :present_equip, :suggested_equip, :user_id
  belongs_to :admin
  belongs_to :survey
  has_attached_file :image, 
    :styles => { :medium => "160x160>", :thumb => "180x180>", :large => "660x660>" }, 
    :default_url => "/images/:style/missing.png",
    :storage => :s3, s3_credentials: {access_key_id: "AKIAJQFILE7GM3P4IOUA",
    secret_access_key: "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",
    bucket: "surveymax"} 
end
