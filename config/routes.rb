Rails.application.routes.draw do
  root to: 'pages#construction'

  get :accueil, to: 'pages#home'
  get :equipe, to: 'pages#team'
  get :documentation, to: 'pages#documentation'
  get :cabinet, to: 'pages#office'
end
