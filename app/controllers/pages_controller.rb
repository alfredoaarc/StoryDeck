class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @user = current_user
    @skip_navbar = true
    @skip_footer = true
    if @user == nil
      render 'home'
    elsif @user.business_owner == nil
      redirect_to new_business_path
    elsif user_signed_in?
      redirect_to dashboard_path
    end
  end

  def dashboard
    @user = current_user
  end
end
