class DailyStatus < ApplicationRecord
  validates :total_hours, :discription, :date, presence: true
  belongs_to :employee
end
