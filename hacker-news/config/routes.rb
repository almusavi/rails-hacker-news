Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/' => 'posts#index'
  #user
  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'

  #sessions
  get '/sessions/new' => 'sessions#new', as: 'new_session'
  post '/sessions' => 'sessions#create'

  #posts

  #comments
end
