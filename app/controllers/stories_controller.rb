class StoriesController < ApplicationController
  def index
    @stories = Story.all.where(business_id: params[:business_id])
    @business = Business.find(params[:business_id])
  end

  def show
    @story = Story.find(params[:id])
    @business = Business.find(params[:business_id])
    @story.business = @business
  end

  def new
    @business = Business.find_by_id(params[:business_id])
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

  def update
    @story = Story.all
    @story = Story.find(params[:id])
    if @story.update(story_params)
      redirect_to business_stories_path(params[:business_id])
      flash[:notice] = 'Your story has been updated.'
    else
      render 'edit'
    end
  end

  def edit
    @business = Business.find(params[:business_id])
    @story = Story.find(params[:id])

  end

  def destroy
    # @story = Story.find(params[:id])
    @story.destroy
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
