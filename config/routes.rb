Rails.application.routes.draw do
  get 'homepage/index'  
  post 'homepage/index' => "homepage#send_email", as: :send_email
  get 'homepage/sent'
  get 'homepage/about'
  root 'homepage#index'
end
