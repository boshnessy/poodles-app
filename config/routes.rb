Rails.application.routes.draw do
  get '/poodles' => 'poodles#index'
  # shows the form which hits the create action
  get '/poodles/new' => 'poodles#new'
  post '/poodles' => 'poodles#create'
  get '/poodles/:id' => 'poodles#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
