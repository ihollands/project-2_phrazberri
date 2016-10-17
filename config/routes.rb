Rails.application.routes.draw do
  get 'phrases/scaffold'

  get 'language/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :languages do
    resources :phrases
  end
end
