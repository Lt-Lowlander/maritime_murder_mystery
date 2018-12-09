class CreateBeginnerTip < ActiveRecord::Migration[5.2]
  def change
    create_table :beginner_tips do |t|
      t.belongs_to :user, null: false

      t.text :advice, null: false
      t.timestamps null: false
    end
  end
end
