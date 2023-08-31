class EducationsController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]

  def index
    @educations = Education.all
    render json: @educations
  end

  def show
    @education = Education.find_by(id: params[:id])
    render json: @education
  end

  def create
    @education = Education.create(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details],
      student_id: current_student.id,
    )
    render json: @education
  end

  def update
    @education = Education.find_by(id: params[:id])
    if @education.student_id == current_student
      @education.update(
        start_date: params[:start_date] || @education.start_date,
        end_date: params[:end_date] || @education.end_date,
        degree: params[:degree] || @education.degree,
        university_name: params[:university_name] || @education.university_name,
        details: params[:details] || @education.details,
        # student_id: params[:student_id] || @education.student_id,
      )
      render json: @education
    else
      render json: { message: "This is not your Education. You cannot edit it" }
    end
  end

  def destroy
    @education = Education.find_by(id: params[:id])
    if @education.student_id == current_student
      @education.destroy
      render json: { message: "Education destroyed successfully" }
    else
      render json: { message: "This is not your Education. You cannot delete it" }
    end
  end
end
