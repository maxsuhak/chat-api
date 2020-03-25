Rails.application.routes.draw do
  resources :conversations, only: %i[index create]
  resources :messages, only: %i[create]
  mount ActionCable.server => '/cable'
end
