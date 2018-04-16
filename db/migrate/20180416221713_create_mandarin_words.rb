class CreateMandarinWords < ActiveRecord::Migration[5.2]
  def change
    create_table :mandarin_words do |t|
      t.references :user, foreign_key: true
      t.text :entry_id
      t.enum :status
      t.text :meaning
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
      t.string :opposites
      t.string :related
      t.string :wordtype
      t.text :measure_word
      t.string :initial
      t.string :final
      t.text :duplicate_from
      t.text :ip_address
      t.integer :vote_value

      t.timestampstz
    end
  end
end
