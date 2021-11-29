class RemoveTableCategoryMains < ActiveRecord::Migration[6.0]
  def change
    drop_table :category_mains
  end
end
