class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    @skip_navbar = true
    @skip_footer = true
    # redirect_to root_path if user_signed_in? # this line is creating too many redirections at some point. Why?
  end

  def dashboard
    @user = current_user
  end
end
