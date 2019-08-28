class AddThumposToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :topos, :integer
    add_column :projects, :leftpos, :integer
    add_column :projects, :toposmobile, :integer
    add_column :projects, :leftposmobile, :integer 
  end
end
