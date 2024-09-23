class RolesController < ApplicationController
  def index
  end

  def create
    role = Role.create(role_params)
    return unless role.save

    render json: role, status: :ok
  end

  private

  def role_params
    params.permit(:name, :employee_id)
  end
end
