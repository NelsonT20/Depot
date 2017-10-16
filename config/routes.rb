Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'
  

  resources :products do
    get :download, :on => :member
    get :who_bought, on: :member
    end
  # For details on the DSL available within this file, see
  # http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  root 'store#index', as: 'store'
end
