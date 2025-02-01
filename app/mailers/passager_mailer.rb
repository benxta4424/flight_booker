class PassagerMailer < ApplicationMailer
  def welcome_mail
    @user=params[:passager]
    @url="http://localhost:3000/"
    mail(to: @user.email, subject: "Welcome to the Bookings app! Feel free to book any flight of your liking!")
  end
end
