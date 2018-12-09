class CreateOtherPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :other_people do |t|
      t.belongs_to :user, null: false

      t.string :lead_name, null: false
      t.text :lead_info, null: false
      t.timestamps null: false
    end
  end
end
