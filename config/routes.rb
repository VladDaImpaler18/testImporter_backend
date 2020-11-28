Rails.application.routes.draw do
  resources :questions, only: [:index, :create]
  delete '/questions/', to: 'questions#destroy'
  patch '/questions/', to: 'questions#update'

  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
