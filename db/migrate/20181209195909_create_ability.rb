class CreateAbility < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities do |t|
      t.belongs_to :user, null: false

      t.string :power_name, null: false
      t.text :power_desc, null: false
      t.integer :quant_total, null: false
      t.integer :quant_used, null: false, default: 0
      t.integer :quant_left, null: false

      t.timestamps null: false
    end
  end
end
