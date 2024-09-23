FactoryBot.define do
  factory :employee do
    first_name { 'kapil' }
    last_name { 'barsker' }
    email { 'kapilbarsker@gmail.com' }
    password { '123445454' }
    association :department
  end
end
