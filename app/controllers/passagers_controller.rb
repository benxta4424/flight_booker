class PassagersController < ApplicationController
  def index
    @passagers=Passager.all
  end

  def new
    @passager=Passager.new(passager_params)
  end

  def create
    @passager=Passager.new(passager_params)
    if @passager.save
      flash.now[:succesful_creation]="Welcome,#{@passager.name}!"
      redirect_to passager_path(@passager)
    else
      flash.now[:creation_error]="Couldn't create the user. Try again!"
      render :new
    end
  end

  private

  def passager_params
    params.require(:passagers).permit(:name, :email)
  end
end
