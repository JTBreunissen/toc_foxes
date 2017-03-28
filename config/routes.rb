Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :event do
    resources :attend
  end
  resources :sponsor
  resources :workshop
  resources :in_company
end
