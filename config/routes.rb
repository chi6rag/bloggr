Rails.application.routes.draw do
	get '/articles', to: 'articles#index', as: 'articles'
	post '/articles', to: 'articles#create'
	get '/articles/new', to: 'articles#new', as: 'new_article'
	get '/articles/:id/edit', to: 'articles#edit', as: 'edit_article'
	get '/articles/:id', to: 'articles#show', as: 'article'
	put 'articles/:id', to: 'articles#update'
	patch 'articles/:id', to: 'articles#update'
	delete 'articles/:id', to: 'articles#destroy'
end