class CampaignsController < ApplicationController
  def create
    @story = Story.find(params[:story_id])
    @campaign = Campaign.new(campaign_params)
    @campaign.status = "pending"
    @campaign.story = @story
    @creator = current_user.creator
    @campaign.creator = @creator
    @campaign.save
    redirect_to dashboard_path
  end

  private
  def campaign_params
    params.require(:campaign).permit(:status, :creator_id, :story_id)
  end
end
