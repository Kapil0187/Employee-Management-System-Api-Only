# spec/controllers/addresses_controller_spec.rb

require 'rails_helper'

RSpec.describe AddressesController, type: :controller do
  let!(:department) { FactoryBot.create(:department) }
  let!(:employee) { FactoryBot.create(:employee, department_id: department.id) }
  let!(:address) { FactoryBot.create(:address, employee: employee) }

  describe 'GET addresses#index' do
    it 'returns a successful response' do
      process :index, method: :get, params: { employee_id: employee.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    it 'creates a new address' do
      process :create, method: :post,
                       params: { city: 'indore', state: 'mp', country: 'india', address: 'electronic complex',
                                 pin_code: '202020', employee_id: employee.id }
      expect(response).to have_http_status(200)
    end
  end
end

# describe 'PlaylistsController#index' do
#   it 'get all playlists' do
#     process :index, method: :get

#   end
# end
