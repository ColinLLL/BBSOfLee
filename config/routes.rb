BBSOfLee::Application.routes.draw do
  get "welcome/index"
  get "consession/new"
  get "consession/create"
  get "consession/destroy"
  get "admin/index"

  resources :users
  resources :consession, only: [:new, :create, :destroy]
  
  get 'consession/new', to: 'consession#new'
  post 'consession/new', to: 'consession#create'
  get 'admin' => 'admin#index'
  get 'Logout' => 'consession#destroy'
  
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
