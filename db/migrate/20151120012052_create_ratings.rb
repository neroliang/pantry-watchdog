class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :point
      t.integer :role
      t.text :comment
      t.integer :sprint_id

      t.timestamps
    end
  end
end
