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

  private

  def businesses_params
    params.require(:business).permit(
      :name,
      :description,
      :logo,
      :category
    )
  end
end
