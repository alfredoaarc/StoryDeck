class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @business = Business.find(params[:business_id])
    @story = Story.new
  end

  def create
    @business = Business.find(params[:business_id])
    @story = Story.new(story_params)
    @story.business = @business
    @business.user = current_user
    if @story.save!
      redirect_to business_stories_path(@business)
    else
      render :new
    end
  end

  private

  def story_params
    params.require(:story).permit(
      :title,
      :description,
      :business_id,
      :published,
      photos: []
    )
  end
end
