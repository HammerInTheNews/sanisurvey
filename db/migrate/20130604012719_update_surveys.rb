class UpdateSurveys < ActiveRecord::Migration
  def up
  	change_column :surveys, :kind_of_oil, :string
  	#add changes to columns here
  end

  def down
    
  end
end
