class CreateGameRules < ActiveRecord::Migration[5.2]
  def change
    create_table :game_rules do |t|
      t.string :rule_name, null: false
      t.text :rule_desc, null: false
      t.timestamps null: false
    end
  end
end
