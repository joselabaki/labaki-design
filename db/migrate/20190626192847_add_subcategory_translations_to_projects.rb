class AddSubcategoryTranslationsToProjects < ActiveRecord::Migration[5.2]
  def change
  reversible do |dir|
    dir.up do
      Project.add_translation_fields! subcategory: :text
    end

    dir.down do
      remove_column :project_translations, :subcategory
    end
  end
end
end
