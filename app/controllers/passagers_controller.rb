class PassagersController < ApplicationController
  def index
    @passagers=Passager.all
  end

  def new
    @passager = Passager.new
  end

  def create
    @passager=Passager.new(passager_params)

    respond_to do |format|
      if @passager.save
        PassagerMailer.with(passager: @passager).welcome_mail.deliver_now
        flash.now[:successful_creation]="Welcome,#{@passager.name}!"
        format.html { redirect_to @passager }
      else
        flash.now[:creation_error]="Couldn't create the user. Try again!"
        format.html { render :new }
      end
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
