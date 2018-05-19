Rails.application.routes.draw do
  resources :mandarin_preferences
  resources :mandarin_words
  # devise_for :users
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
