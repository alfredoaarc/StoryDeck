class AddLocationToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :location, :string
  end
end
