Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/experiments", to: "experiments#index"

  resources :experiments, only: [:index]

  resources :scientists, only: [:show]

  delete "/scientists/:scientist_id/experiments/:id", to: "scientist_experiments#destroy"
  # resources :scientist_experiments, only: [:update]

end
