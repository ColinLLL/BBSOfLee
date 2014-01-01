BBSOfLee::Application.routes.draw do

  resources :posts

  get 'posts', to: 'posts#index'
  get 'new', to: 'posts#new'

  resources :users do
    resources :posts
  end

  get 'logout', to: 'session#destroy'

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
