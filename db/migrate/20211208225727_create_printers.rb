class CreatePrinters < ActiveRecord::Migration[6.1]
  def change
    create_table :printers do |t|
      t.string :labelled
      t.string :mark
      t.string :conect

      t.timestamps
    end
  end
end
