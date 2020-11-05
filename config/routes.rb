Rails.application.routes.draw do

  devise_for :users
  get 'pages/about'
  get 'pages/contact'
  resources :posts, except: [:destroy] do
  get 'destroy', on: :member
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
