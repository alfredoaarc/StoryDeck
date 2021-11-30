class AddLocationToCreators < ActiveRecord::Migration[6.0]
  def change
    add_column :creators, :location, :string
  end
end
