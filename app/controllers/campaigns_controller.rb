class CampaignsController < ApplicationController
  def new
  end

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

  # <%= link_to accept_request(@campaign), method: "patch" %>
  def accepting
    @campaign = Campaign.find(params[:id])
    @campaign.update(status: "accepted")
    redirect_to dashboard_path
  end

  # <%= link_to reject_request(@campaign), method: "patch" %>
  def denying
    @campaign = Campaign.find(params[:id])
    @campaign.update(status: "rejected")
    redirect_to dashboard_path
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy
    redirect_to dashboard_path
  end

  private
  def campaign_params
    params.require(:campaign).permit(:status, :creator_id, :story_id)
  end
end

# update
# edit
# delete

# if statemant to sign in with creator or business

# if statemant pages irñI

# buscar en google cambiar el estatus cambiar un string por otro
