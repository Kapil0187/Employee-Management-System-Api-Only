class Salary < ApplicationRecord
  validates :date, :amount, presence: true
  belongs_to :employee
end
