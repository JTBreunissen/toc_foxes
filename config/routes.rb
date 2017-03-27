Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :attend
  resources :sponsor
  resources :book_in_company
end
