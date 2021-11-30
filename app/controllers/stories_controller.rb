class StoriesController < ApplicationController
  def index
    if current_user.business_owner?
      @stories = current_user.business_stories
    else
      @stories = Story.all
    end
    @campaign = Campaign.new
    @creators = Creator.all
  end

  def show
    @campaign = Campaign.new
    @creators = Creator.all
    @story = Story.find(params[:id])
    @business = @story.business
  end

  def new
    @business = Business.find_by_id(params[:business_id])
    @story = Story.new
  end

  def create
    @business = Business.find(params[:business_id])
    @story = Story.new(story_params)
    @story.business = @business

    params[:story][:category_ids].shift
    params[:story][:category_ids].each do |category_id|
      @story.categories << Category.find(category_id)
    end
    if @story.save!
      redirect_to business_stories_path(@business)
    else
      render :new
    end
  end

  def update
    @story = Story.find(params[:id])

    params[:story][:category_ids].shift
    @story.categories.destroy_all
    params[:story][:category_ids].each do |category_id|
      @story.categories << Category.find(category_id)
    end
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
