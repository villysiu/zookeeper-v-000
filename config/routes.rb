Rails.application.routes.draw do
  get 'animals/order', to: 'animals#order'
  resources :animals, shallow: true do
    resources :health_checkups
  end
  resources :exhibits
  

 # devise_for :users
 devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
authenticated :user do
    root 'home#index', as: 'authenticated_root'
  end
  devise_scope :user do
    root 'devise/sessions#new'
  end
end
