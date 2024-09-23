class AddressesController < ApplicationController
  before_action :set_address, only: %i[update destroy]
  def index
    @address = Address.all
  end

  def create
    address = Address.create(address_params)
    if address.save
      render json: address, status: 200
    else
      render json: { message: 'Something went wrong' }, status: :unprocessable_entity
    end
  end

  def update
    if @address.update(address_params)
      render json: @address, status: :ok
    else
      render json: @address.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @address.destroy
    render json: { message: 'Address deleted successfully' }, status: :no_content
  end

  private

  def set_address
    @address = Address.find_by(id: params[:id])
    render json: { error: 'Address not found' }, status: :not_found
  end

  def address_params
    params.permit(:city, :state, :country, :address, :pin_code, :employee_id)
  end
end
