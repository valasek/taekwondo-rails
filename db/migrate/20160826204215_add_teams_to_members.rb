class AddTeamsToMembers < ActiveRecord::Migration[5.0]
  def change
    add_reference :members, :team, foreign_key: true
  end
end
