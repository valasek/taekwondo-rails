class CreateTkis < ActiveRecord::Migration[5.0]
  def change
    create_table :tkis do |t|
      t.string :name

      t.timestamps
    end

    add_reference :competitions_members, :tki, foreign_key: true
    add_reference :tkis, :sex, foreign_key: true

    reversible do |dir|
      dir.up do
        Tki.translated_attribute_names = [:name]
        Tki.create_translation_table! :name => :string
      end

      dir.down do
        Tki.drop_translation_table!
      end
    end
  end
end