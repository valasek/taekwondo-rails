class CreateMatsogis < ActiveRecord::Migration[5.0]
  def change
    create_table :matsogis do |t|
      t.string :name

      t.timestamps
    end

    add_reference :competitions_members, :matsogi, foreign_key: true
    add_reference :matsogis, :sex, foreign_key: true

    reversible do |dir|
      dir.up do
        Matsogi.translated_attribute_names = [:name]
        Matsogi.create_translation_table! :name => :string
      end

      dir.down do
        Matsogi.drop_translation_table!
      end
    end
  end
end
