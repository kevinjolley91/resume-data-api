Rails.application.routes.draw do

  # Defines the root path route ("/")
  # root "articles#index"

  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  post "/students" => "students#create"
  patch "/students/edit" => "students#update"
  delete "/students/:id" => "students#delete"

  get "/experiences" => "experiences#index"
  post "/experiences" => "experiences#create"
  get "/experiences/:id" => "experiences#show"
  patch "/experiences/:id" => "experiences#update"
  delete "/experiences/:id" => "experiences#destroy"

  get "/skills" => "skills#index"
  post "/skills" => "skills#create"
  get "/skills/:id" => "skills#show"
  patch "/skills/:id" => "skills#update"
  delete "/skills/:id" => "skills#destroy"

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

  post "/sessions" => "sessions#create"
end
