Rails.application.routes.draw do
  get 'coming_soon/index'

  resources :srts
  resources :bookmarks
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    unlocks: 'users/unlocks'
  }
  get 'home/utilities'
  root 'home#index'
end
