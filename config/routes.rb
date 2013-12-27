BBSOfLee::Application.routes.draw do

  resources :users

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
