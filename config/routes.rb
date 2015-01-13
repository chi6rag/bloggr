Rails.application.routes.draw do
  resources :articles # This gives the REST routes for articles to the application
  root 'articles#index'
end
