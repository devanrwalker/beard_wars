Rails.application.routes.draw do
  resources :pictures
  devise_for :users, path: '', path_names: { sign_in: "login", sign_out: "logout", sign_up: "register"}
  get 'home/index'

  resources :profile do
    get "profile"
  end

  root to: "home#index"

end
