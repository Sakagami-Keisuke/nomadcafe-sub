Rails.application.routes.draw do
  
  root "shops#top"

  resources :shops, only: [:index, :show] do

  end





end
