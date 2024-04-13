Rails.application.routes.draw do
  # root to: 'pages#construction'
  root to: 'pages#home'

  # get :accueil, to: 'pages#home'
  get :equipe, to: 'pages#team'
  get 'informations-pratiques', to: 'pages#documentation'
  get :equipement, to: 'pages#office'
end
