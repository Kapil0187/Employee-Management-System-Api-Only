FactoryBot.define do
  factory :address do
    association :employee
    city { 'indore' }
    state { 'Mp' }
    country { 'india' }
    pin_code { '430330' }
    address { 'near by  electronic complex  ' }
  end
end
