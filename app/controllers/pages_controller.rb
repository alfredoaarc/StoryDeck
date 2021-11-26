class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @skip_navbar = true
    @skip_footer = true
    redirect_to dashboard_path if user_signed_in?
  end

  def dashboard
    @user = current_user
  end
end
