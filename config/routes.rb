Rails.application.routes.draw do
  root to: 'pages#home'

  get '/', to: 'pages#home'
  get '/attend', to: 'pages#attend'
  get '/in_company', to: 'pages#in_company'
  get '/sponsor', to: 'pages#sponsor'
  get '/admin/events', to: 'admin/events#index'
  get '/admin/event/new' => "event#new", as: :new_event
  get '/admin/event/:id' => 'event#show', as: :event
  get '/admin/event/:id/edit' => 'event#edit', as: :edit_event

 patch "admin/events/:id" => "event#update"

namespace :admin do
  resources :attend, :in_company, :sponsors, :events
end
end
