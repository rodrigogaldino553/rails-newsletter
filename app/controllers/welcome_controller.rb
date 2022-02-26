class WelcomeController < ApplicationController
  def index
  end

  def please_send_email
    User.create(name: params[:name], email: params[:email])
    HelloMailer
      .with(user: {
        name: params[:name],
        email: params[:email]
      }).welcome_email.deliver_later
    redirect_to welcome_email_sent_path
  end

  def email_sent
    @user_count = User.count
  end
end
