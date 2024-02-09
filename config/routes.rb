Rails.application.routes.draw do
  root to: 'pages#construction'

  get :home, to: 'pages#home'
end
