class RemoveUserReferencesFromCampaign < ActiveRecord::Migration[6.0]
  def change
    remove_reference :campaigns, :user
  end
end
