Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"
    get "signup", to: "users#new"
    get "login", to: "sessions#new"
    post "login", to: "sessions#create"
    delete "logout", to: "sessions#destroy"
    get "orders", to: "orders#show"
    get "order-history", to: "orders#index"
    resources :users, only: %i(create edit update)
    resources :categories, param: :slug, only: :show
    resources :cuisines, param: :slug, only: %i(index show)
    namespace :admin do
      resources :cuisines
    end
    resources :options, only: %i(create new)
  end
end
