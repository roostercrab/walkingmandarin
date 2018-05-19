class RenameColumnInMandarinPreferences < ActiveRecord::Migration[5.2]
  def change
    rename_column :mandarin_preferences, :_pref, :pinyin_tonemarks_pref
  end
end
