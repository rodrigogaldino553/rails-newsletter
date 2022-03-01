Rails.application.routes.draw do
  devise_for :admins
  resources :emails
  post "welcome/unsubscribe/:user", to: "welcome#unsubscribe"
  get "welcome/index"

  post "welcome/please_send_email"
  get "welcome/email_sent"

  root to: "welcome#index"
end
