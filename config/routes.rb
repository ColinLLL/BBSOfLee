BBSOfLee::Application.routes.draw do
  get "session/new"
  get "session/create"
  get "session/destroy"

  resources :users

  get 'session/new', to: 'session#new'
  post 'session/new', to: 'session#create'

  get 'logout' => 'session#destroy'
  
  controller :session do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  controller :users do
    get 'register' => :new
  end

  root to: "welcome#index"
end
