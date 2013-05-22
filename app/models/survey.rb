class Survey < ActiveRecord::Base
  attr_accessible :capac_of_fryer, :chicken_fat, :comments_equip, :comments_recupe, :customer_id, :date, :desired_location, :desired_map, :freq_of_disposal, :grease_trap_service, :grill_plate, :install_electicity_outside, :integrated_solution, :kind_of_oil, :location, :location_map, :number_of_fryers, :organic_pu, :outdoor_electricity, :present_equip, :suggested_equip, :user_id
  belongs_to :user
  belongs_to :survey
end
