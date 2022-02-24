class HelloMailer < ApplicationMailer
  default from: "me@example.com"

  def welcome_email
    @user = params[:user]
    # mail(to: @user[:email], subject: "Welcome to My Awesome Site")
    mail(
      subject: "Hello from Postmark",
      to: @user[:email],
      from: "sender@example.com", # my email here
      html_body: "HTML body goes here",
      track_opens: "true"
    )
  end
end
