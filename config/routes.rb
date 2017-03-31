Rails.application.routes.draw do
 root to: 'pages#home'

 get '/', to: 'pages#home'
 get '/attend', to: 'pages#attend'
 get '/in_company', to: 'pages#in_company'
  post '/in_company', to: 'in_company_requests#create'
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
  resources :in_company_requests, only:[:create]

  namespace :admin do
    resources :workshops, :in_company_requests,
    :events, :sponsor_request, :review, :sponsors
   get '/', to: 'pages#home'
 end
end
