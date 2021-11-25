class CreateEquipments < ActiveRecord::Migration[6.1]
  def change
    create_table :equipments do |t|
      t.string :labelled
      t.string :motherboard
      t.string :os
      t.string :type_equipment
      t.string :ram
      t.string :disk
      t.string :monitor
      t.string :processor

      t.timestamps
    end
  end
end
