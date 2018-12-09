class CreatePlayerNote < ActiveRecord::Migration[5.2]
  def change
    create_table :player_notes do |t|
      t.belongs_to :user, null: false

      t.integer :subject_id, null: false
      t.text :note_contents, null: false
      t.timestamps null: false
    end
  end
end
