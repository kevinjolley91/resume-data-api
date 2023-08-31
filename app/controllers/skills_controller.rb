class SkillsController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]

  def index
    @skills = Skill.all
    render json: @skills
  end

  def create
    @skill = Skill.create(
      name: params[:name],
      student_id: current_student.id,
    )
    render json: @skill
  end

  def show
    @skill = Skill.find_by(id: params[:id])
    render json: @skill
  end

  def update
    @skill = Skill.find_by(id: params[:id])
    if @skill.student_id == current_student.id
      @skill.update(
        name: params[:name] || @skill.name,
        student_id: params[:student_id] || @skill.student_id,
      )
      render json: @skill
    else
      render json: { message: "This is not your Skill. You cannot edit it" }
    end
  end

  def destroy
    @skill = Skill.find_by(id: params[:id])
    if @skill.student_id == current_student.id
      @skill.destroy
      render json: { message: "Skill destroyed successfully" }
    else
      render json: { message: "This is not your Skill. You cannot delete it" }
    end
  end
end
