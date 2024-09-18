class SalariesController < ApplicationController
  def index
    
  end

  def create
    salary = Salary.create(salary_params) 
    if salary.save 
      render json: salary, status:200
    else
      render json: {message: "salary is not created"}
    end
  end

  def update
    salary = Salary.find_by(employee_id: params[:employee_id])
    if salary.update(salary_params)
      render json: salary, status: :ok
    end
  end 

  def destroy
    salary = Salary.find_by(id: params[:id])
    salary.destroy
    render json: { message: 'salary deleted successfully' }, status: :no_content
  end
  private

  def salary_params
    params.permit(:date, :amount ,:employee_id)
  end
end
