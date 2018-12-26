class CreateAbility < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities do |t|
      t.belongs_to :user, null: false

      t.string :power_name, null: false
      t.text :power_desc, null: false

      t.timestamps null: false
    end
  end
end
