Rails.application.routes.draw do
  root to: 'static_pages#home', as:'home'
  get '/contact', to: 'static_pages#contact'
  get '/about', to:'static_pages#about'

  get '/users_controller', to: 'users#new', as:'formulaire'
  post '/users_controller', to: 'users#new_user'

  get '/user/:username', to: 'users#show'
  get '/error', to: 'users#error'

end
