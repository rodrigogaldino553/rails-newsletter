class ApplicationMailer < ActionMailer::Base
  default from: "fake@test.com" # ENV["EMAIL"]
  layout "mailer"
end
