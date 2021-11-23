class BusinessesController < ApplicationController

   def index
    @business = Business.all
  end


  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    @business.user = current_user
    @business.save
    redirect_to business_path(@business)
  end

  def business_params
  params.require(:business).permit(
    :name,
    :description,
    :website
  )
  end
end
