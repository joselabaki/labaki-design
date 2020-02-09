class CreateReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :references do |t|
      t.string :refname
      t.string :reflink

      t.timestamps
    end
  end
end
