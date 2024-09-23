require 'rails_helper'

RSpec.describe Salary, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:amount) }
    it { should validate_presence_of(:date) }
  end

  describe 'association' do
    it { should belong_to(:employee) }
  end
end
