class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
  
  has_one :address , dependent: :destroy
  has_many :daily_statuses , dependent: :destroy
  has_many :leaves , dependent: :destroy
  has_many :salary , dependent: :destroy
  has_many :assignments , dependent: :destroy
  has_many :projects, dependent: :destroy, through: :assignments
end
