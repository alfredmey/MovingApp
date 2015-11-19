Rails.application.routes.draw do

  resources :shipments do
    collection do
      get :shipment_search
    end
  end
  resources :companies

  devise_for :users

  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  resources :users

  get 'home/index' => 'home#index', :as => 'home_index'

end
