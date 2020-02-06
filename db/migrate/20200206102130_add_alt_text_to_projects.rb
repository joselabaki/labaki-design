class AddAltTextToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :alttext, :string

  end
end
