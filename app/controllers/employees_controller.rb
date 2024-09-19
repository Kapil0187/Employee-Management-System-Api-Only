class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :update, :destroy]

  def index
    employees = Employee.all
    render json: employees, status: :ok
  end

  def show
    render json: @employee, status: :ok
  end

  def update
    if @employee.update(employee_params)
      render json: @employee, status: :ok
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @employee.destroy
    render json: { message: 'Employee deleted successfully' }, status: :no_content
  end

  private

  def set_employee
    @employee = Employee.find_by(id: params[:id])
    render json: { error: 'Employee not found' }, status: :not_found unless @employee
  end   

  def employee_params
    params.require(:employee).permit(:first_name, :last_name)
  end
end
