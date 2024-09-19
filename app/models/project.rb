class Project < ApplicationRecord
  has_many :assignments , dependent: :destroy
  has_many :employees,dependent: :destroy, through: :assignments
end
