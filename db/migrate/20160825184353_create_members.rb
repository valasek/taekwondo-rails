class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.integer :itf_id
      t.string :first_name
      t.string :last_name
      t.date :birthdate

      t.timestamps
    end
  end
end
