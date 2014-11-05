Rails.application.routes.draw do
  resources :users

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'
end
