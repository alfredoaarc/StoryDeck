class StoriesController < ApplicationController
  def index
    @stories = Stories.all
  end

  def show
    @stories = Stories.find(params[:id])
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
