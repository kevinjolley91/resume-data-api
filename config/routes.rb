Rails.application.routes.draw do
  get "/experiences" => "experiences#index"
  post "/experiences" => "experiences#create"
end
