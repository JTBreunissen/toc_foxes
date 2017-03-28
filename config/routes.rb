Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  resources :event do
    resources :workshop, only: [:show, :index]
    resources :attend, only: [:show, :index]
    resources :in_company, only: [:show, :index]
    resources :sponsor, only: [:show, :index]
  end

  resources :workshop do
    resources :events 
  end

  resources :sponsor do
    resources :event, only: [:show, :index]
  end
  resources :in_company do
    resources :event, only: [:show, :index]
    resources :attend
  end


end
