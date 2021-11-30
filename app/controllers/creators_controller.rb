class CreatorsController < ApplicationController
  def index
    @creators = Creator.all
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
    params[:creator][:category_ids].shift
    params[:creator][:category_ids].each do |category_id|
      @creator.categories << Category.find(category_id)
    end
    @creator.save

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


# 2 different func
