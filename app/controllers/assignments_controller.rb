class AssignmentsController < ApplicationController
  def index
    
  end

  def create
    assignment = Assignment.create(assignment_params)
    if assignment.save
      render json: assignment, status:200
    end
  end

  private

  def assignment_params
    params.permit(:start_date,:end_date,:status,:employee_id,:project_id)
  end   
end
