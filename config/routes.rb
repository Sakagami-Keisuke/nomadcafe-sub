Rails.application.routes.draw do

  devise_for :users
  
  root "shops#top"
  
  resources :shops, only: [:index, :show, :new ,:create, :edit, :update, :destroy] do
    resources :comments, only: [:create, :destroy]
  end

  get 'inquiry' => 'inquiry#index'              # 入力画面
  post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post 'inquiry/thanks' => 'inquiry#thanks'     # 送信完了画面


end
