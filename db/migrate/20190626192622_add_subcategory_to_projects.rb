class AddSubcategoryToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :subcategory, :string

  end
end
