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
    redirect_to business_path(@creator)
  end

  private

  def creator_params
  params.require(:creator).permit(
    :stage_name,
    :logo,
    :description,
    :website,
    :user_id
  )
  end
end
