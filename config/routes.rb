Rails.application.routes.draw do
  root to: 'pages#home'

  get '/', to: 'pages#home'
  get '/attend', to: 'pages#attend'
  get '/in_company', to: 'pages#in_company'
  get '/sponsor', to: 'pages#sponsor'

  devise_for :users
  #resources :attend
  resources :events
  # do
  #   resources :attend
  # end
  #resources :sponsor
  resources :workshop
  #resources :in_company

  namespace :admin do
    resources :attend, :in_company, :sponsor, :sponsors
  end
end
