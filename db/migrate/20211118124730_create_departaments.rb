class CreateDepartaments < ActiveRecord::Migration[6.1]

  def change
    create_table :departaments do |t|
      t.string :name
      t.string :manager
      t.string :telephone

      t.timestamps
    end
  end
end
 