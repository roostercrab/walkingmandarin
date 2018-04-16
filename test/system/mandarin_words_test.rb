require "application_system_test_case"

class MandarinWordsTest < ApplicationSystemTestCase
  setup do
    @mandarin_word = mandarin_words(:one)
  end

  test "visiting the index" do
    visit mandarin_words_url
    assert_selector "h1", text: "Mandarin Words"
  end

  test "creating a Mandarin word" do
    visit mandarin_words_url
    click_on "New Mandarin Word"

    fill_in "Character Simplified", with: @mandarin_word.character_simplified
    fill_in "Character Traditional", with: @mandarin_word.character_traditional
    fill_in "Duplicate From", with: @mandarin_word.duplicate_from
    fill_in "Entry", with: @mandarin_word.entry_id
    fill_in "Etymology", with: @mandarin_word.etymology
    fill_in "Final", with: @mandarin_word.final
    fill_in "Image File", with: @mandarin_word.image_file
    fill_in "Initial", with: @mandarin_word.initial
    fill_in "Ip Address", with: @mandarin_word.ip_address
    fill_in "Meaning", with: @mandarin_word.meaning
    fill_in "Measure Word", with: @mandarin_word.measure_word
    fill_in "Mnemonic", with: @mandarin_word.mnemonic
    fill_in "Notes", with: @mandarin_word.notes
    fill_in "Opposites", with: @mandarin_word.opposites
    fill_in "Pinyin", with: @mandarin_word.pinyin
    fill_in "Pinyin Marked", with: @mandarin_word.pinyin_marked
    fill_in "Pinyin Numbered", with: @mandarin_word.pinyin_numbered
    fill_in "Reference", with: @mandarin_word.reference
    fill_in "Related", with: @mandarin_word.related
    fill_in "Sound File", with: @mandarin_word.sound_file
    fill_in "Status", with: @mandarin_word.status
    fill_in "Tags", with: @mandarin_word.tags
    fill_in "Tone Number", with: @mandarin_word.tone_number
    fill_in "User", with: @mandarin_word.user_id
    fill_in "Vote Value", with: @mandarin_word.vote_value
    fill_in "Wordtype", with: @mandarin_word.wordtype
    click_on "Create Mandarin word"

    assert_text "Mandarin word was successfully created"
    click_on "Back"
  end

  test "updating a Mandarin word" do
    visit mandarin_words_url
    click_on "Edit", match: :first

    fill_in "Character Simplified", with: @mandarin_word.character_simplified
    fill_in "Character Traditional", with: @mandarin_word.character_traditional
    fill_in "Duplicate From", with: @mandarin_word.duplicate_from
    fill_in "Entry", with: @mandarin_word.entry_id
    fill_in "Etymology", with: @mandarin_word.etymology
    fill_in "Final", with: @mandarin_word.final
    fill_in "Image File", with: @mandarin_word.image_file
    fill_in "Initial", with: @mandarin_word.initial
    fill_in "Ip Address", with: @mandarin_word.ip_address
    fill_in "Meaning", with: @mandarin_word.meaning
    fill_in "Measure Word", with: @mandarin_word.measure_word
    fill_in "Mnemonic", with: @mandarin_word.mnemonic
    fill_in "Notes", with: @mandarin_word.notes
    fill_in "Opposites", with: @mandarin_word.opposites
    fill_in "Pinyin", with: @mandarin_word.pinyin
    fill_in "Pinyin Marked", with: @mandarin_word.pinyin_marked
    fill_in "Pinyin Numbered", with: @mandarin_word.pinyin_numbered
    fill_in "Reference", with: @mandarin_word.reference
    fill_in "Related", with: @mandarin_word.related
    fill_in "Sound File", with: @mandarin_word.sound_file
    fill_in "Status", with: @mandarin_word.status
    fill_in "Tags", with: @mandarin_word.tags
    fill_in "Tone Number", with: @mandarin_word.tone_number
    fill_in "User", with: @mandarin_word.user_id
    fill_in "Vote Value", with: @mandarin_word.vote_value
    fill_in "Wordtype", with: @mandarin_word.wordtype
    click_on "Update Mandarin word"

    assert_text "Mandarin word was successfully updated"
    click_on "Back"
  end

  test "destroying a Mandarin word" do
    visit mandarin_words_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mandarin word was successfully destroyed"
  end
end
