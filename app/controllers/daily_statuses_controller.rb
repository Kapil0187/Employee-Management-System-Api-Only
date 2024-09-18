class DailyStatusesController < ApplicationController
  def index
    
  end


  def create
    daily_status = DailyStatus.create(daily_status_params)
    if daily_status.save 
      render json: daily_status, status:200
    end
  end

  private

  def daily_status_params
    params.permit(:total_hours, :discription, :date ,:employee_id)
  end

end
