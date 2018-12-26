class CreateCells < ActiveRecord::Migration[5.2]
  def change
    create_table :cells do |t|
      t.belongs_to :ability, null: false
      t.integer :consumed, null: false, default: 0

      t.timestamps null: false
    end
  end
end
