Rails.application.routes.draw do
  get '/friends', to: 'friends#index'
  get '/celebrations', to: 'celebrations#index'
  get '/friends/:id', to: 'friends#show'
  get '/friend_celebrations/:id', to: 'friend_celebrations#show'
  get '/friend_celebrations', to: 'friend_celebrations#index'
  get '/celebrations/:id', to: 'celebrations#show'
end
