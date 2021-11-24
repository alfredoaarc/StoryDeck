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
    @story.user = current_user
    @story.save
    #   redirect_to business_stories(@business)
    # end
  end

  private

  def story_params
    params.require(:story).permit(
      :title,
      :description,
      :photos,
      :business_id,
      :published
    )
  end
end
