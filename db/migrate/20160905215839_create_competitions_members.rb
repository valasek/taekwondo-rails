class CreateCompetitionsMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :competitions_members do |t|
      t.integer :member_id
      t.integer :competition_id
      t.boolean :trainee
      t.boolean :coach

      t.timestamps
    end
    add_foreign_key :competitions_members, :members
    add_foreign_key :competitions_members, :competitions
  end
end
