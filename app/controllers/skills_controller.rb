class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render json: @skills
  end

  def create
    @skill = Skill.create(
      name: params[:name],
      student_id: params[:student_id],
    )
    render json: @skill
  end

  def show
    @skill = Skill.find_by(id: params[:id])
    render json: @skill
  end

  def update
    @skill = Skill.find_by(id: params[:id])
    @skill.update(
      name: params[:name] || @skill.name,
      # student_id: params[:student_id] || @skill.student_id,
    )
    render json: @skill
  end

  def destroy
    @skill = Skill.find_by(id: params[:id])
    @skill.destroy
    render json: { message: "Skill destroyed successfully" }
  end
end
