class Departament < ApplicationRecord
    has_many :equipment, through: :listado
    has_many :employee, through: :listado
    has_many :printer, through: :listado

end
