Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :stories, only: %i[index create show destroy]
      post 'login', to: 'users#login'
    end
  end
end
