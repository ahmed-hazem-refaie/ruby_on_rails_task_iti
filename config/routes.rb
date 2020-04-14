Rails.application.routes.draw do
  devise_for :users
  # get 'iti/start'
  resources :posts
  get  '/iti/start'

  root to: "articles#index"
  
  # get 'article/list', to: 'articles#list'
  # get 'article/get/:id', to: 'articles#get'
  # post 'article/create', to: 'articles#create'
  # get 'article/new', to: 'articles#new'
  # get 'article/edit/:id', to: 'articles#edit'
  # post "article/edit/:id", to: "articles#update", as: 'article_update'
  resources :articles do 
  resources :comments
  end

  get 'article/delete/:id', to: 'articles#delete' ,as: 'delete_article'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
