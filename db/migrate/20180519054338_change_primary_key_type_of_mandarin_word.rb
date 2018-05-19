class ChangePrimaryKeyTypeOfMandarinWord < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'uuid-ossp'
    enable_extension 'pgcrypto'

     add_column :mandarin_words, :uuid, :uuid, default: "uuid_generate_v4()", null: false

     change_table :mandarin_words do |t|
       t.remove :id
       t.rename :uuid, :id
     end
     execute "ALTER TABLE mandarin_words ADD PRIMARY KEY (id);"
   end
end
