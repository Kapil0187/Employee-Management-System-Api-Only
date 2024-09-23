class Project < ApplicationRecord
  validates :name, :description, presence: true
  has_many :assignments
  has_many :employees, through: :assignments
end
