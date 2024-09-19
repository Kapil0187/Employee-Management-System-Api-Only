class ProjectsController < ApplicationController
  def index

  end

  def create
    project = Project.create(project_params)
    if project.save
      render json: project, status: 200
    end
  end
  
  private
  def project_params
    params.permit(:name,:description)
  end
end
