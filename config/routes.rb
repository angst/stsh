Stsh::Application.routes.draw do

  resources :services

  post "/" => "shorturls#create"
  get "/:id" => "shorturls#show"

  root :to => "site#index"

  get "site/index"
  get "site/about"

  resources :images
  resources :annotations


  ## Auth shenanigans
  
  match "/signin" => "services#signin"
  match "/signout" => "services#signout"

  match '/auth/:service/callback' => 'services#create' 
  match '/auth/failure' => 'services#failure'

  resources :services, :only => [:index, :create, :destroy] do
    collection do
      get 'signin'
      get 'signout'
      get 'signup'
      post 'newaccount'
      get 'failure'
    end
  end

end
