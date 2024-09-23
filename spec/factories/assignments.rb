FactoryBot.define do
  factory :assignment do
    association :employee
    association :project
    start_date { '2024-10-10' }
    end_date { '2024-12-10' }
    status { 'complited' }
  end
end
