class Address < ApplicationRecord
  validates :address, :pin_code, :city, :state, :country, presence: true
  belongs_to :employee
end
