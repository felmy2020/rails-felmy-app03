Rails.application.routes.draw do
  devise_for :users, # この行にカンマを追加
    controllers: {
      registrations: 'registrations',
      sessions: :sessions
    }

  root 'top#index'
  resources :tweets, only: %i(index new create)
  resources :users, only: [:show, :index]
  resources :reactions, only: [:create]

  resources :matching, only: [:index]
  resources :chat_rooms, only: [:create, :show]

end
