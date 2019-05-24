Rails.application.routes.draw do
  get 'homepage/index'
  post 'homepage/index' => "homepage#send_email", as: :send_email
  root 'homepage#index'
end
