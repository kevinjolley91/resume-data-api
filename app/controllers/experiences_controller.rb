class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render json: @experiences
  end

  def create
    @experience = Experience.create(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
    )
    render json: @experience
    # we won't be rendering json in the completed app
  end

  def show
    @experience = Experience.find_by(id: params[:id])
    render json: @experience
  end
end
