Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'quizzes#home'
devise_for :users
resources :quizzes, only: [:index, :show, :new]
resources :users, only: [:show]

end
