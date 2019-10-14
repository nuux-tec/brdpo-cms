Rails.application.routes.draw do
  devise_scope :user do
    root to: 'devise/sessions#new'
  end
  
  devise_for :users
  
  resources :courses do
    member do
      patch 'publish'
      patch 'disable'
    end
  end
  
  resources :events do
    member do
      patch 'publish'
      patch 'disable'
    end
  end
  
  resources :news do
    member do
      patch 'publish'
      patch 'disable'
    end
  end
end
