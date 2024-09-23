FactoryBot.define do
  factory :daily_status do
    association :employee
    total_hours { '10:00' }
    discription { 'i had completed xyz things' }
  end
end
