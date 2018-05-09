class CreateMandarinPreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :mandarin_preferences do |t|
      t.references :user, foreign_key: true
      t.text :tone_color_1
      t.text :tone_color_2
      t.text :tone_color_3
      t.text :tone_color_4
      t.text :tone_color_5
      t.text :actor_tone_1
      t.text :actor_tone_2
      t.text :actor_tone_3
      t.text :actor_tone_4
      t.text :actor_tone_5
      t.text :understudy_tone_1
      t.text :understudy_tone_2
      t.text :understudy_tone_3
      t.text :understudy_tone_4
      t.text :understudy_tone_5
      t.integer :_pref
      t.integer :character_variant_pref
      t.integer :mnemonic_active_field
      t.integer :notes_active_field
      t.integer :learned_from_active_field
      t.integer :etymology_active_field
      t.integertags_active_field :image_active_field
      t.integer :similar_active_field
      t.integerclassifier_active_field :part_of_speech_active_field

      t.timestamps
    end
  end
end
