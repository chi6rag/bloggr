Rails.application.routes.draw do
  root 'articles#index'
  resources :articles do # This gives the REST routes for articles to the application
    resources :comments  # This gives article_comments_ path/url
  end
end
