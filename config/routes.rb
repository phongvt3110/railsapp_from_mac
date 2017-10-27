Rails.application.routes.draw do
  get 'post/new'
  post 'post/new' => 'post#create'
  get 'post/:id' => 'post#show'
  get 'post/:id/edit' => 'post#edit'
  patch 'post/:id'  => 'post#update'
  delete 'post/:id' => 'post#delete'
  namespace :backend do
    get 'home/index'
    resources :articles
  end

  get 'welcome/index'
  get 'articles', to: 'backend/articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
