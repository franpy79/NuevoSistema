class Printer < ApplicationRecord
    has_many :employee, through: :listado
    has_many :departament, through: :listado
    has_many :equipment, through: :listado
end
