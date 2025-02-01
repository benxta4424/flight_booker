class PassagerMailer < ApplicationMailer
  def welcome_mail
    @passager=params[:passager]
    @url="http://localhost:3000/"
    mail(to: @passager.email, subject: "Welcome to the Bookings app! Feel free to book any flight of your liking!")
  end
end
