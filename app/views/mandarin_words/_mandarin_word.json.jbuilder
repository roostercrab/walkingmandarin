json.extract! mandarin_word, :id, :user_id, :entry_id, :status, :meaning, :character_simplified, :character_traditional, :pinyin_numbered, :pinyin_marked, :pinyin, :tone_number, :mnemonic, :notes, :reference, :etymology, :sound_file, :image_file, :tags, :opposites, :related, :wordtype, :measure_word, :initial, :final, :duplicate_from, :ip_address, :vote_value, :created_at, :updated_at
json.url mandarin_word_url(mandarin_word, format: :json)
