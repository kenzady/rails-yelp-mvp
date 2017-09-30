Rails.application.routes.draw do
  resources :restaurants, only: [:create, :index, :new, :show]
  resources :restaurants do
    resources :reviews, only: [ :index, :create ]
  end
  resources :reviews, only: [ :show ]
  post "restaurants/:id/reviews", to: 'reviews#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "controller#action"
end
