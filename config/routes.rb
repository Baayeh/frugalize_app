Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root to: 'devise/sessions#index'
  end
  
  resources :users, only: :index do
    resources :groups, only: [:index, :new, :create] do
      resources :expenses, only: [:index, :new, :create]
      resources :group_expenses
    end
  end
end
