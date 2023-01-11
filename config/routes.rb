Rails.application.routes.draw do
  devise_for :owners
  devise_for :vets, path: 'vets'
  # eg. http://localhost:3000/vets/sign_in
  devise_for :users, path: 'users'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
