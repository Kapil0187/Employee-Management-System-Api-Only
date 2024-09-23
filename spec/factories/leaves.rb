FactoryBot.define do
  factory :leave do
    association :employee
    start_date { '2024-10-10' }
    end_date { '2024-11-11' }
    leave_type { 'casula' }
  end
end
