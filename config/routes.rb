Rails.application.routes.draw do
  #get 'admin/index'

  #get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'admin' => 'admin#index'
  controller :sessions do 
  	get 'login' => :new
  	post 'login' => :create
  	delete 'logout' => :destroy
  end

  resources :users

  root 'admin#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
