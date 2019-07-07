class AddThumbnailsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :thumbnails, :string, array: true, default: [] # add images column as array
  end
end
