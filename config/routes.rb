Rails.application.routes.draw do
  get 'vet_pages/vet_home'
  get 'owner_pages/owner_home'
  devise_for :owners, path: 'owners', controllers: {
    sessions: 'owners/sessions',
    registrations: 'owners/registrations',
    passwords: 'owners/passwords'
  }
  devise_for :vets, path: 'vets', controllers: {
    sessions: 'vets/sessions',
    registrations: 'vets/registrations',
    passwords: 'vets/passwords'
  }
  # eg. http://localhost:3000/vets/sign_in
  devise_for :users, path: 'users'

  root to: "pages#home"
  get 'login_view', to: 'pages#login_view'
  get 'signup_view', to: 'pages#signup_view'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'veterinaries/index', to: 'veterinaries#index'
  get 'record_types/index', to: 'record_types#index'
  get 'animal_types/index', to: 'animal_types#index'
  resources :pets do
    resources :records, only: %i[new create]
  end
  resources :records, only: %i[show index edit update destroy]

  get 'vet_home', to: 'vet_pages#vet_home'
  get 'attend_new_pet', to: 'vet_pages#attend_new_pet'
  get 'attended_pets', to: 'vet_pages#attended_pets'

end
#Preguntas para siguiente clase: ¿Será necesario nestear rutas de vets en veterinaries?
#¿Y nestear pets dentro de owners? Yo creo que sí.
#¿Nestear records dentro de record_types?
