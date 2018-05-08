class CreateMandarinWords < ActiveRecord::Migration[5.2]
  def change
    create_table :mandarin_words do |t|
      t.references :user, foreign_key: true
      t.text :entry_id
      t.enum :view_status
      t.text :meaning
      t.text :radical
      t.text :stroke_order
      t.string :character_simplified
      t.string :character_traditional
      t.string :pinyin_numbered
      t.string :pinyin_marked
      t.string :pinyin
      t.integer :tone_number
      t.text :mnemonic
      t.text :notes
      t.string :learned_from
      t.text :etymology
      t.text :sound_file
      t.text :image_file
      t.text :tags
      t.string :opposites_standard
      t.string :similar_standard
      t.string :opposites_traditional
      t.string :similar_traditional
      t.string :part_of_speech
      t.text :classifier
      t.string :initial
      t.string :final
      t.text :duplicate_from
      t.text :ip_address
      t.integer :vote_value

      t.timestamps
    end
  end
end
