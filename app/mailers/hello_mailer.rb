class HelloMailer < ApplicationMailer
  default from: "fake@test.com" # ENV["EMAIL"]

  def welcome_email
    @user = params[:user]
    mail(to: @user[:email], subject: "Welcome to our Newslleter!")
  end
end
