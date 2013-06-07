class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :date
      t.boolean :kind_of_oil
      t.boolean :grill_plate
      t.boolean :chicken_fat
      t.string :grease_trap_service
      t.boolean :outdoor_electricity
      t.boolean :install_electicity_outside
      t.string :present_equip
      t.integer :number_of_fryers
      t.integer :capac_of_fryer
      t.integer :freq_of_disposal
      t.string :suggested_equip
      t.string :location
      t.string :location_map
      t.string :desired_location
      t.string :desired_map
      t.boolean :integrated_solution
      t.boolean :organic_pu
      t.text :comments_equip
      t.text :comments_recupe
      t.integer :customer_id
      t.integer :user_id

      t.timestamps
    end
  end
end
