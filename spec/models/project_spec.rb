require 'rails_helper'

RSpec.describe Project, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
  end

  describe 'association' do
    it { should have_many(:assignments) }
    it { should have_many(:employees).through(:assignments) }
  end
end
