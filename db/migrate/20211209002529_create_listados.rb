class CreateListados < ActiveRecord::Migration[6.1]
  def change
    create_table :listados do |t|
      t.references :departament, null: false, foreign_key: true
      t.references :employee
      t.references :equipment, null: false, foreign_key: true
      t.references :printer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
