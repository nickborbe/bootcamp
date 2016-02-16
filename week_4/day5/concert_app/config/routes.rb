Rails.application.routes.draw do
  
  devise_for :users
  resources :concerts, only: [:show, :new, :create] do
  resources :comments, only: [:index, :new, :create, :destroy, :edit, :update]

  get "/" => 'concerts#index' 

end

end
