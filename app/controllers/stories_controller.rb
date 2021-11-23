class StoriesController < ApplicationController
  def index
    @story = Stories.all
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    @story.business = current_user
    @business.save
    redirect_to story_path(@story)
  end

  private

  def stories_params
    params.require(:stories).permit(
      :title,
      :description,
      :photo,
      :category
    )
  end
end
