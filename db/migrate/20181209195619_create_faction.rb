class CreateFaction < ActiveRecord::Migration[5.2]
  def change
    create_table :factions do |t|
      t.string :fac_name, null: false
      # t.string :fac_sign, null: false

      t.timestamps null: false
    end
  end
end
