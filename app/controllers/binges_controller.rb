class BingesController < ApplicationController
  def index
    @user = User.find(params[:user_id]) #man kann andere User anschauen
    @binges = @user.binges.includes(:medium)
  end


  def new
    @user = @current_user
    @binge = Binge.new
    @media = Medium.all
  end

  def create
    @user = @current_user
    @binge = @user.binges.new(binge_params)

    if @binge.save
      redirect_to user_binges_path(@user), notice: "Serie wurde hinzugefügt!"
    else
      @medium = Medium.all
      render :new
    end
  end

  private

  def binge_params
    params.require(:binge).permit(:medium_id, :status)
  end
end
