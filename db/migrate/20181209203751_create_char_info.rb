class CreateCharInfo < ActiveRecord::Migration[5.2]
  def change
    create_table :char_infos do |t|
      t.belongs_to :user, null: false

      t.text :info_desc, null: false
      t.timestamps null: false
    end
  end
end
