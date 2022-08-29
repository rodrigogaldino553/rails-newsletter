class WelcomeController < ApplicationController
  #skip_before_action :authenticate_admin!
  def index
  end

  def please_send_email
    #User.create(name: params[:name], email: params[:email])
    HelloMailer
      .with(user: {
        name: params[:name],
        email: params[:email]
      }).welcome_email.deliver_later
    redirect_to welcome_email_sent_path
  end

  def email_sent
    20
    #@user_count = User.count
  end

  def unsubscribe
  end
end
