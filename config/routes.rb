Rails.application.routes.draw do
  
  root "shops#top"
  devise_for :users


  resources :shops, only: [:index, :show] do

  end





end
