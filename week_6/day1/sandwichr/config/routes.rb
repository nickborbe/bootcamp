Rails.application.routes.draw do
resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
get '/sandwiches/:id/ingredients/add' => "sandwich_views#add_ingredient"
	scope "/api" do 
  resources :sandwich_ingredients, except: [:new, :edit]
  resources :ingredients, except: [:new, :edit]
  resources :sandwiches, except: [:new, :edit]
  

 match 'sandwiches/:id/ingredients/add' => "sandwiches#add_ingredient", 
 via: :post

end
















end
