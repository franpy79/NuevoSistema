class Listado < ApplicationRecord
  belongs_to :departament
  belongs_to :equipment
  belongs_to :printer
end
