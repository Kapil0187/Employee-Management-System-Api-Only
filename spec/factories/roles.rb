FactoryBot.define do
  factory :role do
    association :employee
    name { 'developer' }
  end
end
