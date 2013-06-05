class UpdateSurveys < ActiveRecord::Migration
  def up
  	change_column :surveys, :kind_of_oil, :string
  	#add changes to columns here
  	change_column :surveys, :grill_plate, :string
  	change_column :surveys, :chicken_fat, :string
  	change_column :surveys, :outdoor_electricity, :string
  	change_column :surveys, :install_electicity_outside, :string
  	change_column :surveys, :integrated_solution, :string
  	change_column :surveys, :organic_pu, :string
  end

  def down
    
  end
end
