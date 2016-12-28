Rails.application.routes.draw do

    resources :messages

    root 'fighters#index'

    resources :fighters

    delete '/logout' => 'sessions#destroy', as: :logout

    resources :sessions, only: [:new, :create]

  end
