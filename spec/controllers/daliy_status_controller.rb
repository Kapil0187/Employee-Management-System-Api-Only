# spec/controllers/daily_statuses_controller_spec.rb

require 'rails_helper'

RSpec.describe DailyStatusesController, type: :controller do
  let!(:department) { FactoryBot.create(:department) }
  let!(:employee) { FactoryBot.create(:employee, department_id: department.id) }

  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end
  end
end
