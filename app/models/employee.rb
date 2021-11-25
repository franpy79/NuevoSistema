class Employee < ApplicationRecord
    has_many :equipment_employees
	has_many :equipment, through: :equipment_employees
	validates :name, presence: true, length: { minimum: 3, maximum: 25 }
	validates_uniqueness_of :name
end
