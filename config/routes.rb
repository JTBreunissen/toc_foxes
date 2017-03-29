Rails.application.routes.draw do
  root to: 'pages#home'

  get '/home' => 'pages#home'
  get '/attend' => 'pages#attend'
  get '/in_company' => 'pages#in_company'
  get '/sponsor' => 'pages#sponsor'

  devise_for :users
  #resources :attend
  resources :event
  # do
  #   resources :attend
  # end
  #resources :sponsor
  resources :workshop
  #resources :in_company
end
