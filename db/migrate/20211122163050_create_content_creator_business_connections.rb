class CreateContentCreatorBusinessConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :content_creator_business_connections do |t|
      t.string :status
      t.references :business, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
