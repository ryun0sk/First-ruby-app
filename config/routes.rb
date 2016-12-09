Rails.application.routes.draw do
 
  resources :universities
  resources :users
root "top#top"
resources :plans
end
