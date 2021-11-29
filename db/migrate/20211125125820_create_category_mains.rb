class CreateCategoryMains < ActiveRecord::Migration[6.0]
  def change
    create_table :category_mains do |t|
      t.string :age_range

      t.timestamps
    end
  end
end
