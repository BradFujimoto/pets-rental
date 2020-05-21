Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    get "dashboard", to: "pages#dashboard"
    resources :bookings do
      patch "validate", to: "bookings#validate"
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pets do
    resources :bookings, only: [:new, :create, :destroy]
  end
end
