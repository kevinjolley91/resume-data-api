class StudentsController < ApplicationController
  before_action :authenticate_student, except: [:index, :show, :create]

  def student_allowed
    user_signed_in? && (current_student.id == @student.id)
  end

  def index
    @students = Student.all
    render json: @students
  end

  def show
    @student = Student.find_by(id: params["id"])
    render json: @student    
  end

  def create
    @student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      "personal_blog/website_url": params[:"personal_blog/website_url"],
      online_resume_url: params[:online_resume_url],
      github_url: params[:github_url],
      photo: params[:photo],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if @student.save
      render json: @student
    else
      render json: { errors: @student.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @student = Student.find_by(id: params["id"])
    # unless @student.id == current_student.id
    #   flash[:notice] = "Access denied as your are not this student."
    # end
    if student_allowed
      @student.update(
        first_name: params[:first_name] || @student.first_name,
        last_name: params[:last_name] || @student.last_name,
        email: params[:email] || @student.email,
        phone_number: params[:phone_number] || @student.phone_number,
        short_bio: params[:short_bio] || @student.short_bio,
        linkedin_url: params[:linkedin_url] || @student.linkedin_url,
        twitter_handle: params[:twitter_handle] || @student.twitter_handle,
        "personal_blog/website_url": params[:"personal_blog/website_url"] || @student.personal_blog/website_url,
        online_resume_url: params[:online_resume_url] || @student.online_resume_url,
        github_url: params[:github_url] || @student.github_url,
        photo: params[:photo] || @student.photo,
      )
      if @student.save
        render json: @student
      else
        render json: { errors: @student.errors.full_messages }, status: :unprocessible_entity
      end
    end
  end

  def delete
    @student = Student.find_by(id: params["id"])
    @student.delete
    render json: { message: "Student removed."}
  end
end
