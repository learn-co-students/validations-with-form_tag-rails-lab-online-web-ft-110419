Rails.application.routes.draw do
  resources :posts, only: [ :new, :edit, :create, :update, :show ]
  resources :authors, only: [ :new, :edit, :create, :update, :show ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
