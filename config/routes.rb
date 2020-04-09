Rails.application.routes.draw do

  devise_for :users
  
  root "shops#top"
  
  resources :shops, only: [:index, :show, :new ,:create, :edit, :update, :destroy] do
    resources :comments, only: [:create, :destroy]
  end


end
