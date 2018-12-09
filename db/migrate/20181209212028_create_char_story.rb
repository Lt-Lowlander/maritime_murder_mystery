class CreateCharStory < ActiveRecord::Migration[5.2]
  def change
    create_table :char_stories do |t|
      t.belongs_to :user, null: false

      t.text :char_story, null: false
      t.timestamps null: false
    end
  end
end
