Rails.application.routes.draw do
  get 'users/new'

  get 'pages/index'

  root 'pages#index'
  get 'pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
