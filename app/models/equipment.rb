class Equipment < ApplicationRecord
    has_many :employee, through: :listado
    has_many :departament, through: :listado
    has_many :printer, through: :listado

end
