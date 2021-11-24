class RemoveCategoryFromStories < ActiveRecord::Migration[6.0]
  def change
    remove_column :stories, :category
  end
end
