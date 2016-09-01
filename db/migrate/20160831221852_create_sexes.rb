class CreateSexes < ActiveRecord::Migration[5.0]
  def change
    create_table :sexes do |t|
      t.timestamps
    end

    add_reference :members, :sexes, foreign_key: true

    reversible do |dir|
      dir.up do
        Sex.translated_attribute_names = [:sex]
        Sex.create_translation_table! sex: :string
      end

      dir.down do
        Sex.drop_translation_table!
      end
    end
  end
end