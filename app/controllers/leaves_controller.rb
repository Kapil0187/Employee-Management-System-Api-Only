class LeavesController < ApplicationController
  def index
  end

  def create
    leave = Leave.create(leave_params)
    return unless leave.save

    render json: leave, status: 200
  end

  def destroy
    leave = Leave.find_by(id: params[:id])
    leave.destroy
    render json: { message: 'leave deleted successfully' }, status: :no_content
  end

  private

  def leave_params
    params.permit(:start_date, :end_date, :leave_type, :employee_id)
  end
end
