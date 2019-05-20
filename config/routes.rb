Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: "cats#index"
   resources :cats, only: [:index, :show, :new, :create]
   resources :rentals, only: [:new, :create]
end