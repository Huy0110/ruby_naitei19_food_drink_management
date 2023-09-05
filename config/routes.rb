Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"
    resources :categories, param: :slug, only: [:show]
    resources :cuisines, param: :slug, only: [:index, :show]
  end
end
