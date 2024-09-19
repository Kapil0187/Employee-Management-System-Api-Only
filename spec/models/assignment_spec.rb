require 'rails_helper'

RSpec.describe Assignment, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
    it { should validate_presence_of(:status) }
  end

  describe 'association' do
    it { should belong_to(:employee) }
    it { should belong_to(:project) }
  end
end
