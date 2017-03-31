Rails.application.routes.draw do
  root to: 'pages#home'
  get '/', to: 'pages#home'
  get '/attend', to: 'pages#attend'
  get '/in_company', to: 'pages#in_company'
  get '/sponsor', to: 'pages#sponsor'
  get '/admin/events', to: 'admin/events#index'
  get '/admin/event/new', to: "event#new", as: :new_event
  get '/admin/event/:id', to: 'event#show', as: :event
  get '/admin/event/:id/edit', to: 'event#edit', as: :edit_event
 patch "admin/events" => "event#update"
 devise_for :users
namespace :admin do
  resources :attend, :in_company, :sponsors, :events
end
end
