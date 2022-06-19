Rails.application.routes.draw do
  resources :managers, only: [:index, :create, :edit, :update]


  root 'managers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
