class CreatePremise < ActiveRecord::Migration[5.2]
  def change
    create_table :premises do |t|
      t.text :scene, null: false
      t.text :breaking_news
      
      t.timestamps null: false
    end
  end
end
