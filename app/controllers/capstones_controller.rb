class CapstonesController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]

  def index
    @capstones = Capstone.all
    render json: @capstones
  end

  def show
    @capstone = Capstone.find_by(id: params[:id])
    render json: @capstone
  end

  def create
    @capstone = Capstone.create(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
    )
    render json: @capstone
  end

  def update
    @capstone = Capstone.find_by(id: params[:id])
    if capstone.student_id == current_student
      @capstone.update(
        name: params[:name] || @capstone.name,
        description: params[:description] || @capstone.description,
        url: params[:url] || @capstone.url,
        screenshot: params[:screenshot] || @capstone.screenshot,
      )
      render json: @capstone
      render json: { message: "This is not your Capstone. You cannot edit it." }

    else

  end

  def destroy
    @capstone = Capstone.find_by(id: params[:id])
    @capstone.destroy
    render json: { message: "Capstone destroyed successfully" }
  end
end
