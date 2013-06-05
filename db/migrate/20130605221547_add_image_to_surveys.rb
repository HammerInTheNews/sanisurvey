class AddImageToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :image, :string
    add_column :surveys, :image_file_name,    :string
    add_column :surveys, :image_content_type, :string
    add_column :surveys, :image_file_size,    :integer
    add_column :surveys, :image_updated_at,   :datetime
  end
end


