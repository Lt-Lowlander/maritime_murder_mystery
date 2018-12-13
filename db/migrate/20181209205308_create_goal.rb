class CreateGoal < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.belongs_to :user, null: false

      t.string :goal_objective, null: false
      t.text :goal_details, null: false
      t.integer :goal_achieved, null: false, default: 0
      t.timestamps null: false
    end
  end
end
