class RemoveTableContentCreatorBusinessConnections < ActiveRecord::Migration[6.0]
  def change
    drop_table :content_creator_business_connections
  end
end
