require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:department_id) }
  end

  describe 'association' do
    it { should have_one(:address) }
    it { should have_many(:daily_statuses) }

    it { should have_many(:salary) }
    it { should have_many(:assignments) }
    it { should have_many(:projects).through(:assignments) }
  end
end
