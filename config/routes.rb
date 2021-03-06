Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/account", to: "users#account"
  get "/pending", to: "users#pending"
  get "/parts", to: "users#parts"
  get "/booking/:id/confirm" , to: "bookings#confirm", as: "booking_confirm"
  get "/booking/:id/decline" , to: "bookings#decline", as: "booking_decline"
  resources :star_parts, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    # resources :star_parts, only:[:destroy], as: :star_parts
  # end

  resources :star_parts do
    resources :bookings, only: [:new, :create, :destroy] do
      resources :reviews, only: [ :new, :create, :destroy ]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
