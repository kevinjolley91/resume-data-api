Rails.application.routes.draw do
  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  post "/students" => "students#create"
  patch "/students" => "students#update"
  delete "/students/:id" => "students#delete"
end
