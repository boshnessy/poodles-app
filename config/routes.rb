Rails.application.routes.draw do
  get '/poodles' => 'poodles#index'
  # shows the form which hits the create action
  get '/poodles/new' => 'poodles#new'
  post '/poodles' => 'poodles#create'
  get '/poodles/:id' => 'poodles#show'
  patch '/poodles/:id' => 'poodles#update'
  get '/poodles/:id/edit' => 'poodles#edit'
  delete '/poodles/:id' => 'poodles#destroy'
end
