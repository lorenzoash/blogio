Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'posts#index'
    get '/posts/new', to: 'posts#new'
    post '/posts', to: 'posts#create'
    get 'posts/:id', to: 'posts#show', as: :post
    get 'posts/:id/upvote', to: 'posts#upvote', as: :upvote
    get 'posts/:id/downvote', to: 'posts#downvote', as: :downvote
end
