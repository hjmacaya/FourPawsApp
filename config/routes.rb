Rails.application.routes.draw do
  devise_for :owners, path: 'owners', controllers: {
    sessions: 'owners/sessions'
  }
  devise_for :vets, path: 'vets', controllers: {
    sessions: 'vets/sessions'
  }
  # eg. http://localhost:3000/vets/sign_in
  devise_for :users, path: 'users'

  root to: "pages#home"
  get 'vet_home', to: 'pages#vet_home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'veterinaries/index', to: 'veterinaries#index'
  get 'record_types/index', to: 'record_types#index'
  get 'animal_types/index', to: 'animal_types#index'
  resources :pets do
    resources :records
  end
end
#Preguntas para siguiente clase: ¿Será necesario nestear rutas de vets en veterinaries?
#¿Y nestear pets dentro de owners? Yo creo que sí.
#¿Nestear records dentro de record_types?
