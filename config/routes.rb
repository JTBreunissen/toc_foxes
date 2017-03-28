Rails.application.routes.draw do
  root to: 'pages#home'

  get "/pages/:page" => "pages#show"

  devise_for :users

  resources :event do
    resources :attend
  end

  resources :sponsor

  resources :workshop

  resources :in_company

end
