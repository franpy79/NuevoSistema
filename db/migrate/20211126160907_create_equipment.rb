class CreateEquipment < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment do |t|
      t.string :labelled
      t.string :motherboard
      t.string :so
      t.string :type_equipment
      t.string :Ram_memory
      t.string :hard_disk
      t.string :processor
      t.string :print_machine

      t.timestamps
    end

  end
end