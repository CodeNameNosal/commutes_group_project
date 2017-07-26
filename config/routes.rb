Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#index"

  resources :commutes

  namespace :api do
    namespace :v1 do
      resources :commutes do
        resources :reviews
      end
    end
  end
  get '/mine' => 'commutes#mine'
end
