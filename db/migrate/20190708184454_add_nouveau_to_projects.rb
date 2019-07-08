class AddNouveauToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :nouveau, :boolean, default: false # add images column as array

  end
end
