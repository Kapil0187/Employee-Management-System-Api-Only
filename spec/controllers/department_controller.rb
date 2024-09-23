# spec/controllers/departments_controller_spec.rb

require 'rails_helper'

RSpec.describe DepartmentsController, type: :controller do
  let!(:department) { FactoryBot.create(:department) }

  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    it 'creates a new department with valid parameters' do
      post :create,
           params: { name: 'CSE' }
      expect(response).to have_http_status(200)
    end
  end

  describe 'PUT #update' do
    it 'update department with valid parameters' do
      put :update, params: { id: department.id, name: 'Updated' }
      expect(response).to have_http_status(200)
      department.reload
      expect(department.name).to eq('Updated')
    end
  end

  private

  def json_response
    JSON.parse(response.body)
  end
end
