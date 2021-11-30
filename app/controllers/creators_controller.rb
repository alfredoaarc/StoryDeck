class CreatorsController < ApplicationController
   def index
    @creator = Creator.all
  end

  def show
    @creator = Creator.find(params[:id])
  end


  def new
    @creator = Creator.new
  end

  def create
    @creator = Creator.new(creator_params)
    @creator.user = current_user
    @creator.save
    params[:creator][:category].each do |cat|
      creator_category.create(creator_id: @creator, category_id: cat)
    end

    redirect_to dashboard_path
  end

  def edit
    @creator = Creator.find(params[:id])
  end

  private


  def creator_params
  params.require(:creator).permit(
    :stage_name,
    :logo,
    :description,
    :website,
    :user_id,
    :category
  )
  end
end
