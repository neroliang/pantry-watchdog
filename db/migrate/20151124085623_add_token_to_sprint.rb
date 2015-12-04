class AddTokenToSprint < ActiveRecord::Migration
  def change
  	add_column :sprints, :token, :string
  end
end
