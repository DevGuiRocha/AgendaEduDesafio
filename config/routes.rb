Rails.application.routes.draw do
  root 'home#index'

  resources :arquivo, only: %i[index create]
  resources :despesas
  resources :politicos, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
