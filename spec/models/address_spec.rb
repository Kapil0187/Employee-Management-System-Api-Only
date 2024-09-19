require 'rails_helper'

RSpec.describe Address, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:pin_code) }
  end

  describe 'association' do
    it { should belong_to(:employee) }
  end
end
