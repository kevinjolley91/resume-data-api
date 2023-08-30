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

  resources :capstones
  get "/capstones", to: "capstones#index"
  get "/capstones/:id", to: "capstones#show"
  post "/capstones", to: "capstones#create"
  patch "/capstones/:id", to: "capstones#update"
  delete "/capstones/:id", to: "capstones#destroy"
end
