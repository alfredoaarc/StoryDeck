class BusinessesController < ApplicationController
  before_action :set_business, only: %i[ show edit destroy ]

  def index
    # Show all businesses only if the user
    # is a content creator
    if current_user.business_owner?
      redirect_to dashboard_path
    else
      @business = Business.all
    end
  end

  def show
    @business
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

  def edit
  end

  def update
    @business = Business.find(params[:id])
    if @business.update(business_params)
      redirect_to dashboard_path
      flash[:notice] = 'Business was updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @business.destroy
  end

  private

  def set_business
    @business = Business.find(params[:id])
  end

  def business_params
    params.require(:business).permit(
      :name,
      :logo,
      :description,
      :website
    )
  end
end
