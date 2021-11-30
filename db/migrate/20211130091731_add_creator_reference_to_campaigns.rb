class AddCreatorReferenceToCampaigns < ActiveRecord::Migration[6.0]
  def change
    add_reference :campaigns, :creator, null: false, foreign_key: true
  end
end
