Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
  get 'articles/index'
  resources :articles do
    resources :comments 
  end 
  root "articles#index"

end
  unauthenticated :user do
  root "welcome#index"
  end

  
end
