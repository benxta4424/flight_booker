class PassagersController < ApplicationController
  def index
    @passagers=Passager.all
  end

  def new
    @passager = Passager.new
  end

  def create
    @passager=Passager.new(passager_params)
    if @passager.save
      flash.now[:successful_creation]="Welcome,#{@passager.name}!"
    else
      flash.now[:creation_error]="Couldn't create the user. Try again!"
    end
  end

  def show
    @passager = Passager.find(params[:id])
  end

  private

  def passager_params
    params.require(:passager).permit(:name, :email)
  end
end
