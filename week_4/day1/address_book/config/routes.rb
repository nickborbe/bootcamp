Rails.application.routes.draw do
  
get "/contacts" => "contacts#index"

get "/add_contact" => "contacts#new"

post "/new_contact", :to => "contacts#create"

get "/contacts/:id" => "contacts#show"

post "/contacts/add_favorite" => "contacts#add_favorite"

end
