Rails.application.routes.draw do
  
  root "shops#index"

  resources :shops, only: [:index, :show]
end
