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
end
