class MediaController < ApplicationController
    before_action :set_medium, only: %i[ show edit update destroy ]

  def index
    @media = Medium.all
  end

  def show
  end

  def new
    @media = Medium.new
  end

  def create
    @media = Medium.new(medium_params)
    if @media.save
      redirect_to @media
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @media.update(medium_params)
      redirect_to @media
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @media.destroy
    redirect_to media_path
  end

  private

  def set_medium
    @media = Medium.find(params[:id])
  end

  def medium_params
    params.expect(medium: [ :name ])
  end
end
