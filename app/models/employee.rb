class Employee < ApplicationRecord
    has_many :equipment, through: :listado
    has_many :departament, through: :listado
    has_many :equipment, through: :listado
end
