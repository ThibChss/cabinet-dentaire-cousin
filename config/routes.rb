Rails.application.routes.draw do
  root to: 'pages#home'

  # Static pages
  get :equipe, to: 'pages#team'
  get 'informations-pratiques', to: 'pages#documentation'
  get :equipement, to: 'pages#office'
  get 'googled6e4167a4d6e5023.html', to: 'pages#google_verification'

  # For site map
  get '/sitemap.xml', to: 'sitemap#index', defaults: { format: 'xml' }

  # For errors
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
