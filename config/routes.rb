Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :products do
    resources :comments
  end
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :payments, only: [:create]

  get 'simple_pages/about'

  get 'simple_pages/contact'

  get 'simple_pages/index'

  get 'simple_pages/landing_page'

  root 'simple_pages#index'

  post 'simple_pages/thank_you'

  mount ActionCable.server => '/cable'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
