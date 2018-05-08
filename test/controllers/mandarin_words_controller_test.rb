require 'test_helper'

class MandarinWordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mandarin_word = mandarin_words(:one)
  end

  test "should get index" do
    get mandarin_words_url
    assert_response :success
  end

  test "should get new" do
    get new_mandarin_word_url
    assert_response :success
  end

  test "should create mandarin_word" do
    assert_difference('MandarinWord.count') do
      post mandarin_words_url, params: { mandarin_word: { character_simplified: @mandarin_word.character_simplified, character_traditional: @mandarin_word.character_traditional, classifier: @mandarin_word.classifier, duplicate_from: @mandarin_word.duplicate_from, entry_id: @mandarin_word.entry_id, etymology: @mandarin_word.etymology, final: @mandarin_word.final, image_file: @mandarin_word.image_file, initial: @mandarin_word.initial, ip_address: @mandarin_word.ip_address, learned_from: @mandarin_word.learned_from, meaning: @mandarin_word.meaning, mnemonic: @mandarin_word.mnemonic, notes: @mandarin_word.notes, opposites_standard: @mandarin_word.opposites_standard, opposites_traditional: @mandarin_word.opposites_traditional, part_of_speech: @mandarin_word.part_of_speech, pinyin: @mandarin_word.pinyin, pinyin_marked: @mandarin_word.pinyin_marked, pinyin_numbered: @mandarin_word.pinyin_numbered, radical: @mandarin_word.radical, similar_standard: @mandarin_word.similar_standard, similar_traditional: @mandarin_word.similar_traditional, sound_file: @mandarin_word.sound_file, stroke_order: @mandarin_word.stroke_order, tags: @mandarin_word.tags, tone_number: @mandarin_word.tone_number, user_id: @mandarin_word.user_id, view_status: @mandarin_word.view_status, vote_value: @mandarin_word.vote_value } }
    end

    assert_redirected_to mandarin_word_url(MandarinWord.last)
  end

  test "should show mandarin_word" do
    get mandarin_word_url(@mandarin_word)
    assert_response :success
  end

  test "should get edit" do
    get edit_mandarin_word_url(@mandarin_word)
    assert_response :success
  end

  test "should update mandarin_word" do
    patch mandarin_word_url(@mandarin_word), params: { mandarin_word: { character_simplified: @mandarin_word.character_simplified, character_traditional: @mandarin_word.character_traditional, classifier: @mandarin_word.classifier, duplicate_from: @mandarin_word.duplicate_from, entry_id: @mandarin_word.entry_id, etymology: @mandarin_word.etymology, final: @mandarin_word.final, image_file: @mandarin_word.image_file, initial: @mandarin_word.initial, ip_address: @mandarin_word.ip_address, learned_from: @mandarin_word.learned_from, meaning: @mandarin_word.meaning, mnemonic: @mandarin_word.mnemonic, notes: @mandarin_word.notes, opposites_standard: @mandarin_word.opposites_standard, opposites_traditional: @mandarin_word.opposites_traditional, part_of_speech: @mandarin_word.part_of_speech, pinyin: @mandarin_word.pinyin, pinyin_marked: @mandarin_word.pinyin_marked, pinyin_numbered: @mandarin_word.pinyin_numbered, radical: @mandarin_word.radical, similar_standard: @mandarin_word.similar_standard, similar_traditional: @mandarin_word.similar_traditional, sound_file: @mandarin_word.sound_file, stroke_order: @mandarin_word.stroke_order, tags: @mandarin_word.tags, tone_number: @mandarin_word.tone_number, user_id: @mandarin_word.user_id, view_status: @mandarin_word.view_status, vote_value: @mandarin_word.vote_value } }
    assert_redirected_to mandarin_word_url(@mandarin_word)
  end

  test "should destroy mandarin_word" do
    assert_difference('MandarinWord.count', -1) do
      delete mandarin_word_url(@mandarin_word)
    end

    assert_redirected_to mandarin_words_url
  end
end
