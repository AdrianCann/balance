Rails.application.routes.draw do
  resources :asset_class, only: [:index, :create]
end
