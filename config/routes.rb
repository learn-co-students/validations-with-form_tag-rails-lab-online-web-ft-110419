Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:edit, :show, :new, :create, :update]
  resources :posts, only: [:edit, :show, :new, :create, :update]
end
