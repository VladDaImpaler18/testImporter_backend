Rails.application.routes.draw do
  resources :questions, only: [:index, :show, :create]
  delete '/questions/:question', to: 'questions#destroy'
  patch '/questions/:question', to: 'questions#update'

  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
