Rails.application.routes.draw do
  resources :entries  #gives us routes (for example it provides whole CRUD system)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
end
