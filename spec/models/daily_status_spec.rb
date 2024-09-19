require 'rails_helper'

RSpec.describe DailyStatus, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:total_hours) }
    it { should validate_presence_of(:discription) }
    it { should validate_presence_of(:date) }
  end

  describe 'association' do
    it { should belong_to(:employee) }
  end
end
