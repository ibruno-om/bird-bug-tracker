class CreateProjectCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :project_categories do |t|
      t.references :project, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :assigned_user, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
