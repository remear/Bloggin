Bloggin::Application.routes.draw do

  devise_for :users

  root :to => "home#index"

  devise_for :users do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
    get '/register' => 'devise/registrations#new'
  end
  
  resources :posts
  
  get '/tag/:tag' => 'tags#show'
end