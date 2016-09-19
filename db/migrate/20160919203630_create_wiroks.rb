class CreateWiroks < ActiveRecord::Migration[5.0]
  def change
    create_table :wiroks do |t|
      t.string :name

      t.timestamps
    end

    add_reference :competitions_members, :wirok, foreign_key: true
    add_reference :wiroks, :sex, foreign_key: true

    reversible do |dir|
      dir.up do
        Wirok.translated_attribute_names = [:name]
        Wirok.create_translation_table! :name => :string
      end

      dir.down do
        Wirok.drop_translation_table!
      end
    end
  end
end