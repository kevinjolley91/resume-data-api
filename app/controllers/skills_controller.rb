class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render json: @skills
  end

  def create
    @skill = Skill.create(
      name: params[:name],
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
    )
    render json: @skill
  end
end
