Rails.application.routes.draw do
  root 'dishes#index'
  resources :ingestions, only: %i[index new create update edit destroy]
  resources :dishes
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
