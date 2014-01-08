BBSOfLee::Application.routes.draw do
  resources :posts do
    resources :comments
  end

  resources :users

  get 'newpost', to: 'posts#new'

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
