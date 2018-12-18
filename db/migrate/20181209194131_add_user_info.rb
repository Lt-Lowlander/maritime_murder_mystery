class AddUserInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :string, null: false, default: "member"
    add_column :users, :position, :string
    add_column :users, :character, :string, null: false
    add_column :users, :title, :string, null: false
    add_column :users, :tagline, :string, null: false
    add_column :users, :attendee, :string, null: false
  end
end
