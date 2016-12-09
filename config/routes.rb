Rails.application.routes.draw do
 
  root "top#top"
  get 'top/top'
  resources :universities
  resources :users
  resources :plans
end
