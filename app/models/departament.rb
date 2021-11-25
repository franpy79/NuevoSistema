class Departament < ApplicationRecord
    has_many :equipment_departaments
	has_many :equipment, through: :equipment_departaments
	validates :name, presence: true, length: { minimum: 3, maximum: 25 }
	validates_uniqueness_of :name
end
