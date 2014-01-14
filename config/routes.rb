BBSOfLee::Application.routes.draw do
  resources :posts do
    resources :comments
  end

  resources :users

  get 'new', to: 'posts#new'

  get 'logout', to: 'session#destroy'

  get 'myposts', to: 'posts#myindex'

  #get 'forgetpassword', to: 'session#forgetpassword'

  controller :session do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy

    get 'forgetpassword' => :forgetpassword
    post 'forgetpassword' => :sendpassword
  end

  controller :users do
    get 'register' => :new
  end

  root to: "welcome#index"
end
