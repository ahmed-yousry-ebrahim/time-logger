Rails.application.routes.draw do
  resources :sheets
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'sheets#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end


end
