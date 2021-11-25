class Equipment < ApplicationRecord
    belongs_to :user
	has_many :equipment_departaments
	has_many :departaments, through: :equipment_departaments
    has_many :equipment_employees
	has_many :employees, through: :equipment_employees

	validates :labelled, presence: true , length: {minimum: 3 ,maximum: 50}
	validates :so , presence: true, length: {minimum:3 , maximum:300}
    validates :motherboard , presence: true, length: {minimum:3 , maximum:300}
	validates :user_id, presence: true
end
