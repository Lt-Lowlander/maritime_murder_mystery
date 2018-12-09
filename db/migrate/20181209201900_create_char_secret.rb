class CreateCharSecret < ActiveRecord::Migration[5.2]
  def change
    create_table :char_secrets do |t|
      t.belongs_to :user, null: false

      t.text :sec_desc, null: false
      t.timestamps null: false
    end
  end
end
