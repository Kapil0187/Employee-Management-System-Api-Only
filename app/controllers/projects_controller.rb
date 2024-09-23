class ProjectsController < ApplicationController
  def index
  end

  def create
    project = Project.create(project_params)
    return unless project.save

    render json: project, status: 200
  end

  private

  def project_params
    params.permit(:name, :description)
  end
end
