Rails.application.routes.draw do
  get"/new",to: "contacts#new"
  resources :contacts
  resources :tests


  # puts "a"
end
