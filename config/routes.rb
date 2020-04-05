Rails.application.routes.draw do
  resources :home, only: [:index]
  resources :shelters
  resources :junctions
  resources :trails
  resources :welcome, only: [:index]
  resources :welcome_contents
  root 'welcome#index'
  resources :sponsorship_levels
  resources :sponsors

  namespace :api do
    namespace :v1 do
      resources :welcome_data, only: [:index]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
