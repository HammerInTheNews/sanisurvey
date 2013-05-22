class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_number
      t.string :restaurant_name
      t.string :street_address
      t.string :postal_code
      t.string :province
      t.string :phone
      t.string :email
      t.string :contact_name
      t.string :city

      t.timestamps
    end
  end
end
