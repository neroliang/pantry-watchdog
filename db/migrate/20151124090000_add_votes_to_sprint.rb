class AddVotesToSprint < ActiveRecord::Migration
  def change
  	add_column :sprints, :votes, :integer
  end
end
