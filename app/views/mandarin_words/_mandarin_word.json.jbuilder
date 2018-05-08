json.extract! mandarin_word, :id, :user_id, :entry_id, :view_status, :meaning, :radical, :stroke_order, :character_simplified, :character_traditional, :pinyin_numbered, :pinyin_marked, :pinyin, :tone_number, :mnemonic, :notes, :learned_from, :etymology, :sound_file, :image_file, :tags, :opposites_standard, :similar_standard, :opposites_traditional, :similar_traditional, :part_of_speech, :classifier, :initial, :final, :duplicate_from, :ip_address, :vote_value, :created_at, :updated_at
json.url mandarin_word_url(mandarin_word, format: :json)
