class CreatePremise < ActiveRecord::Migration[5.2]
  def change
    create_table :premises do |t|
      t.text :heading, null: false
      t.text :content, null: false

      t.timestamps null: false
    end
  end
end
