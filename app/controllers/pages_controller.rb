class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @user = current_user
    @skip_navbar = true
    @skip_footer = true
    if @user.nil?
      render 'home'
    elsif @user.business_owner.nil?
      redirect_to new_business_path
    elsif user_signed_in?
      redirect_to dashboard_path
    end
  end

  def dashboard
    @my_businesses = current_user.businesses
    @business_count = @my_businesses.count
    @plural = 'es'
    if @business_count > 1
      puts @plural
    else
      @plural = ''
      puts @plural
    end
  end

  private

  def set_business
    @business = Business.find(params[:id])
  end

  def business_params
    params.require(:business).permit(:name, :logo, :description, :website)
  end
end
