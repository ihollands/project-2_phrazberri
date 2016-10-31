Rails.application.routes.draw do
  devise_for :users
  # AM: What's this? Did it come from running `rails scaffold`?
  get 'phrases/scaffold'

  get 'language/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "languages#index"

  resources :languages do
    resources :phrases
  end
end
