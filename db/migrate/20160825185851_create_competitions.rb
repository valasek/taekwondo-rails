class CreateCompetitions < ActiveRecord::Migration[5.0]
  def change
    create_table :competitions do |t|
      t.string :name
      t.string :location
      t.date :date
      t.date :deadline
      t.decimal :fee
      t.string :instructions_url
      t.string :langlong

      t.timestamps
    end
  end
end
