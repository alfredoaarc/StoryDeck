class BusinessesController < ApplicationController
  def index
    @business = Business.all
  end

  def show
    @business = Business.find(params[:id])
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    @business.user = current_user
    @business.save
    redirect_to dashboard_path
  end

  private

  def business_params
    params.require(:business).permit(
      :name,
      :logo,
      :description,
      :website
    )
  end
end
