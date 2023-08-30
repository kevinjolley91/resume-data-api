class StudentsController < ApplicationController
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
      personal_blog_or_website_url: params[:personal_blog_or_website_url],
      online_resume_url: params[:online_resume_url],
      github_url: params[:github_url],
      photo_url: params[:photo_url],
    )
    if @student.save
      render json: @student
    else
      render json: { errors: @student.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @student = Student.find_by(id: params["id"])
    @student.update(
      first_name: params[:first_name] || @student.first_name,
      last_name: params[:last_name] || @student.last_name,
      email: params[:email] || @student.email,
      phone_number: params[:phone_number] || @student.phone_number,
      short_bio: params[:short_bio] || @student.short_bio,
      linkedin_url: params[:linkedin_url] || @student.linkedin_url,
      twitter_handle: params[:twitter_handle] || @student.twitter_handle,
      personal_blog_or_website_url: params[:personal_blog_or_website_url] || @student.personal_blog_or_website_url,
      online_resume_url: params[:online_resume_url] || @student.online_resume_url,
      github_url: params[:github_url] || @student.github_url,
      photo_url: params[:photo_url] || @student.photo_url,
    )
    if @student.save
      render json: @student
    else
      render json: { errors: @student.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def delete
    @student = Student.find_by(id: params["id"])
    @student.delete
    render json: { message: "Student removed."}
  end
end
