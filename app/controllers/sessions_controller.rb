class SessionsController < ApplicationController
  def create
    student = Student.find_by(email: params[:email])
    if student && student.authenticate(params[:password])
      jwt = JWT.encode(
        {
          student_id: student.id, # the data to encode
          exp: 24.hours.from_now.to_i, # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      render json: { jwt: jwt, email: student.email, student_id: student.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
end

# original code-- I changed all "user" to "student"
# def create
#   user = User.find_by(email: params[:email])
#   if user && user.authenticate(params[:password])
#     jwt = JWT.encode(
#       {
#         user_id: user.id, # the data to encode
#         exp: 24.hours.from_now.to_i # the expiration time
#       },
#       Rails.application.credentials.fetch(:secret_key_base), # the secret key
#       "HS256" # the encryption algorithm
#     )
#     render json: { jwt: jwt, email: user.email, user_id: user.id }, status: :created
#   else
#     render json: {}, status: :unauthorized
#   end
# end
