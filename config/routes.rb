Rails.application.routes.draw do
  root "home#index"
  namespace :users do
    resources :todo_items do
      resources :comments
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
