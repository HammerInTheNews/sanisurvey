class AddImageToSurveys < ActiveRecord::Migration
  def self.up
    add_attachment :surveys, :image
  end

  def self.down
    remove_attachment :surveys, :image
  end
end
