Rails.application.routes.draw do
  wash_out :marimunes
  resources :mobilants, only: [:index]
end
