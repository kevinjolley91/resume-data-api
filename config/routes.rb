Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :educations
  get "/educations", to: "educations#index"
  get "/educations/:id", to: "educations#show"
  post "/educations", to: "educations#create"
  patch "/educations/:id", to: "educations#update"
  delete "/educations/:id", to: "educations#destroy"
end
