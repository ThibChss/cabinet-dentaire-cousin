Rails.application.routes.draw do
  # root to: 'pages#construction'
  root to: 'pages#home'

  # get :accueil, to: 'pages#home'
  get :equipe, to: 'pages#team'
  get 'informations-pratiques', to: 'pages#documentation'
  get :equipement, to: 'pages#office'
  get 'googled6e4167a4d6e5023.html', to: 'pages#google_verification'

  # For site map
  get '/sitemap.xml', to: 'sitemap#index', defaults: { format: 'xml' }
end
