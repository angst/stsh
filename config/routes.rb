Stsh::Application.routes.draw do

  resources :services

  post "/" => "shorturls#create"
  get "/:id" => "shorturls#show"

  root :to => "site#index"

  get "site/index"
  get "site/about"
    
  resources :images
  resources :annotations

end
