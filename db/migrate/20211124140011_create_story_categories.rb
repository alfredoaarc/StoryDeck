class CreateStoryCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :story_categories do |t|
      t.references :story, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
