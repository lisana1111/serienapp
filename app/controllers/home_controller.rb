class HomeController < ApplicationController
  def index
    redirect_to user_binges_path(1)
  end
end
