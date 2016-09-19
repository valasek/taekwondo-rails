class CreateTulls < ActiveRecord::Migration[5.0]
  def change
    create_table :tulls do |t|
      t.string :name

      t.timestamps
    end

    add_reference :competitions_members, :tull, foreign_key: true
    add_reference :tulls, :sex, foreign_key: true

    reversible do |dir|
      dir.up do
        Tull.translated_attribute_names = [:name]
        Tull.create_translation_table! :name => :string
      end

      dir.down do
        Tull.drop_translation_table!
      end
    end
  end
end