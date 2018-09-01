Rails.application.routes.draw do
  resources :questions
  resources :question_types
  resources :question_type2s
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
