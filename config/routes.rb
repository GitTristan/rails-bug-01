Rails.application.routes.draw do
  root "quotes#index"

  resources :quotes

    get '/sign-up' => 'registrations#new', as: :signup
    post '/sign-up' => 'registrations#create'
    get '/sign-in' => 'authentication#new', as: :signin
    post '/sign-in' => 'authentication#create'
    get '/sign-out' => 'authentication#destroy', as: :signout
end
