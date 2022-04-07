Rails.application.routes.draw do
  devise_for :users

  root 'tops#index'
  resources :tweets, only: %i(index new create)

end
