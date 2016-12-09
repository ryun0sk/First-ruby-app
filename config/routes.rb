Rails.application.routes.draw do
 
  resources :users
root "top#top"
resources :plans
end
