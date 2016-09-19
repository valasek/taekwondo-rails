class CreateTullTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :tull_teams do |t|
      t.string :name

      t.timestamps
    end

    add_reference :competitions_members, :tull_team, foreign_key: true
    add_reference :tull_teams, :sex, foreign_key: true

    reversible do |dir|
      dir.up do
        TullTeam.translated_attribute_names = [:name]
        TullTeam.create_translation_table! :name => :string
      end

      dir.down do
        TullTeam.drop_translation_table!
      end
    end
  end
end