Rails.application.routes.draw do
  resources :users, only: :index do
    resources :groups, only: [:index, :new, :create] do
      resources :expenses, only: [:index, :new, :create]
      resources :group_expenses
    end
  end
end
