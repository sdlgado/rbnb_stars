Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/account", to: "users#account"
  resources :star_parts, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    # resources :star_parts, only:[:destroy], as: :star_parts
  # end
end
