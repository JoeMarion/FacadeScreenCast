Rails.application.routes.draw do

  root to: 'authors#index'

  resources :authors, only: [:index, :show]
end
