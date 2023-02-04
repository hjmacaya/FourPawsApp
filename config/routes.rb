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
  resources :veterinaries, only: %i[index show]
  get 'record_types/index', to: 'record_types#index'
  get 'animal_types/index', to: 'animal_types#index'
  resources :pets do
    resources :records, only: %i[new create]
  end
  resources :records, only: %i[show index edit update destroy]

  get 'vet_home', to: 'vet_pages#vet_home'
  get 'attend_new_pet', to: 'vet_pages#attend_new_pet'
  get 'attended_pets', to: 'vet_pages#attended_pets'
  get 'show_vets', to: 'vet_pages#show_vets'
  get 'show_all_pets', to: 'vet_pages#show_all_pets'

  resources :appointments
  get 'new_appointment_1', to: 'owner_pages#new_appointment_1'
  get 'new_appointment_2/:veterinary', to: 'owner_pages#new_appointment_2', as: "new_appointment_2"

  get 'show_owner_pets', to: 'owner_pages#show_pets'

  resources :pets, only: %i[new create destroy]

  get 'owner_show_pet/:id', to: 'pets#owner_show_pet', as: 'owner_show_pet'
  get 'show_pet_records/:id', to: 'pets#show_pet_records', as: 'show_pet_records'
end
