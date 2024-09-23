class Assignment < ApplicationRecord
  validates :start_date, :end_date, :status, presence: true
  belongs_to :project
  belongs_to :employee
end
