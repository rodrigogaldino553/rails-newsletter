class WelcomeController < ApplicationController
  def index
  end

  def please_send_email
    HelloMailer
      .with(user: {
        name: "jane",
        email: "jane@example.com"
      }).welcome_email.deliver_later
  end

  def sent_email
  end
end
