Rails.application.routes.draw do
  get 'git/status'

  root 'articles#index'
  resources :articles do # This gives the REST routes for articles to the application
    resources :comments  # This gives article_comments_ path/url
  end
  resources :tags
  resources :authors
  resources :author_sessions, only: [:new, :create, :destroy]
  get 'login' => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
end
