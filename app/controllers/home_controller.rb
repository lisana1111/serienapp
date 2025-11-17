class HomeController < ApplicationController
  def index
    redirect_to user_binges_path(@current_user)
  end
end
