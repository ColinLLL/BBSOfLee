BBSOfLee::Application.routes.draw do
  get "consession/new"
  get "consession/create"
  get "consession/destroy"
  get "sessios/new"
  get "sessios/create"
  get "sessios/destroy"
  get "admin/index"
  resources :signins

  resources :logins
  resources :sessions

  resources :users
  resources :consession, only: [:new, :create, :destroy]
  #match '/consession/new', to: 'consession#new', via: [:get]
  #match '/consession/new', to: 'consession#create', via: [:post]
  get 'consession/new', to: 'consession#new'
  post 'consession/new', to: 'consession#create'
  
  controller :consession do
    get 'Login' => :new
    post 'Login' => :create
    delete 'Logout' => :destroy
  end

  controller :users do
    get 'register' => :new
  end

  root to: "welcome#index"
end
