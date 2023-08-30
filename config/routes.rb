Rails.application.routes.draw do
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

  # Defines the root path route ("/")
  # root "articles#index"

  resources :educations
  get "/educations", to: "educations#index"
  get "/educations/:id", to: "educations#show"
  post "/educations", to: "educations#create"
  patch "/educations/:id", to: "educations#update"
  delete "/educations/:id", to: "educations#destroy"

end
