Rails.application.routes.draw do
 
  devise_for :users
  root "top#top"
  get 'top/top'
  resources :universities
  resources :users do
   member do
     get :like_universities
   end
  end
  post 'like/university_id' => 'likes#like', as:'like'
  delete 'like/university_id' => 'likes#dislike', as:'dislike'
  resources :plans
end
