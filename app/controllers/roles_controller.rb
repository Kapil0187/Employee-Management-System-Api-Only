class RolesController < ApplicationController
  def index
    
  end
  
  def create
    role = Role.create(role_params)
    if role.save
      render json: role, status: 200
    end
  end

  private

  def role_params
    params.permit(:name,:employee_id)
  end
end
