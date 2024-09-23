class DepartmentsController < ApplicationController
  before_action :set_department, only: %i[update destroy]

  def index
    department = Department.all
  end

  def create
    department = Department.create(department_params)
    return unless department.save

    render json: department, status: 200
  end

  def update
    if @department.update(department_params)
      render json: @department, status: :success
    else
      render json: @department.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @department.destroy
      render json: { message: 'Department deleted successfully' }
    else
      render json: { message: 'Department is not found' }, status: :not_found
    end
  end

  private

  def set_department
    @department = Department.find_by(id: params[:id])
    render json: { error: 'Department not found' }, status: :not_found
  end

  def department_params
    params.permit(:name)
  end
end
