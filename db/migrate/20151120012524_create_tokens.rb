class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.integer :value
      t.integer :sprint_id

      t.timestamps
    end
  end
end
