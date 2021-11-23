class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :description
      t.string :category
      t.boolean :published, default: false
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
