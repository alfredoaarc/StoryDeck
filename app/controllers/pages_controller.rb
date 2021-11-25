class PagesController < ApplicationController

  def home
  end
  def dashboard
    @user = current_user
    @stories = current_user.business.stories

  end
end
