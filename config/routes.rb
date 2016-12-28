Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'sessions/new'

    get 'sessions/create'

    get 'sessions/destroy'

    root 'fighters#index'

    resources :fighters

    delete '/logout' => 'sessions#destroy', as: :logout

    resources :sessions, only: [:new, :create]

  end
