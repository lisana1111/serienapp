class BingesController < ApplicationController
  def index
  @user = User.find(params[:user_id])
  @binges = @user.binges.includes(:medium)
end


  def new
  @user = User.find(params[:user_id])
  @binge = Binge.new
  @media = Medium.all
end

def create
  @user = User.find(params[:user_id])
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