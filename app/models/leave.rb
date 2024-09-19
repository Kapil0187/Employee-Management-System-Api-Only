class Leave < ApplicationRecord
  validates :start_date, :end_date, :leave_type, presence: true
  belongs_to :employee
end
