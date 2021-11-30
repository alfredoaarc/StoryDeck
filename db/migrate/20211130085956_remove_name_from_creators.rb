class RemoveNameFromCreators < ActiveRecord::Migration[6.0]
  def change
    remove_column :creators, :name, :string
  end
end
