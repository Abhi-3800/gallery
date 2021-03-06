Rails.application.routes.draw do
  resources :albums do
    collection do
      delete "delete_image"
    end
  end
  devise_for :users
  resources :home

  get 'home/about'
  root "home#index"
  get 'tags/:tag', to: 'home#index', as: 'tag'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
