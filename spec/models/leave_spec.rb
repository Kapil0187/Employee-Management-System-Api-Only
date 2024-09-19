require 'rails_helper'

RSpec.describe Leave, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
    it { should validate_presence_of(:leave_type) }
  end

  describe 'association' do
    it { should belong_to(:employee) }
  end
end
