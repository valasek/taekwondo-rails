class CreateMobumMatsogis < ActiveRecord::Migration[5.0]
  def change
    create_table :mobum_matsogis do |t|
      t.string :name

      t.timestamps
    end

    add_reference :competitions_members, :mobum_matsogi, foreign_key: true
    add_reference :mobum_matsogis, :sex, foreign_key: true

    reversible do |dir|
      dir.up do
        MobumMatsogi.translated_attribute_names = [:name]
        MobumMatsogi.create_translation_table! :name => :string
      end

      dir.down do
        MobumMatsogi.drop_translation_table!
      end
    end
  end
end
