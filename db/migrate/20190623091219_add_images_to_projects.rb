class AddImagesToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :images, :string, array: true, default: [] # add images column as array
  end
end
