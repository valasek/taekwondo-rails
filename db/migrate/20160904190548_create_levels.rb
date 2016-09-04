class CreateLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :levels do |t|
      t.string :name

      t.timestamps
    end

    add_reference :members, :level, foreign_key: true

    reversible do |dir|
      dir.up do
        Level.translated_attribute_names = [:name]
        Level.create_translation_table! :name => :string
      end

      dir.down do
        Level.drop_translation_table!
      end
    end
  end
end
