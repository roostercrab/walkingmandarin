require "application_system_test_case"

class MandarinPreferencesTest < ApplicationSystemTestCase
  setup do
    @mandarin_preference = mandarin_preferences(:one)
  end

  test "visiting the index" do
    visit mandarin_preferences_url
    assert_selector "h1", text: "Mandarin Preferences"
  end

  test "creating a Mandarin preference" do
    visit mandarin_preferences_url
    click_on "New Mandarin Preference"

    fill_in "Pref", with: @mandarin_preference._pref
    fill_in "Actor Tone 1", with: @mandarin_preference.actor_tone_1
    fill_in "Actor Tone 2", with: @mandarin_preference.actor_tone_2
    fill_in "Actor Tone 3", with: @mandarin_preference.actor_tone_3
    fill_in "Actor Tone 4", with: @mandarin_preference.actor_tone_4
    fill_in "Actor Tone 5", with: @mandarin_preference.actor_tone_5
    fill_in "Character Variant Pref", with: @mandarin_preference.character_variant_pref
    fill_in "Classifier Active Field", with: @mandarin_preference.classifier_active_field
    fill_in "Css Pref", with: @mandarin_preference.css_pref
    fill_in "Etymology Active Field", with: @mandarin_preference.etymology_active_field
    fill_in "Image Active Field", with: @mandarin_preference.image_active_field
    fill_in "Initial Final Active Field", with: @mandarin_preference.initial_final_active_field
    fill_in "Learned From Active Field", with: @mandarin_preference.learned_from_active_field
    fill_in "Mnemonic Active Field", with: @mandarin_preference.mnemonic_active_field
    fill_in "Notes Active Field", with: @mandarin_preference.notes_active_field
    fill_in "Opposite Active Field", with: @mandarin_preference.opposite_active_field
    fill_in "Part Of Speech Active Field", with: @mandarin_preference.part_of_speech_active_field
    fill_in "Revision", with: @mandarin_preference.revision_id
    fill_in "Similar Active Field", with: @mandarin_preference.similar_active_field
    fill_in "Tags Active Field", with: @mandarin_preference.tags_active_field
    fill_in "Tone Color 1", with: @mandarin_preference.tone_color_1
    fill_in "Tone Color 2", with: @mandarin_preference.tone_color_2
    fill_in "Tone Color 3", with: @mandarin_preference.tone_color_3
    fill_in "Tone Color 4", with: @mandarin_preference.tone_color_4
    fill_in "Tone Color 5", with: @mandarin_preference.tone_color_5
    fill_in "Understudy Tone 1", with: @mandarin_preference.understudy_tone_1
    fill_in "Understudy Tone 2", with: @mandarin_preference.understudy_tone_2
    fill_in "Understudy Tone 3", with: @mandarin_preference.understudy_tone_3
    fill_in "Understudy Tone 4", with: @mandarin_preference.understudy_tone_4
    fill_in "Understudy Tone 5", with: @mandarin_preference.understudy_tone_5
    fill_in "User", with: @mandarin_preference.user_id
    fill_in "Vote Active Field", with: @mandarin_preference.vote_active_field
    click_on "Create Mandarin preference"

    assert_text "Mandarin preference was successfully created"
    click_on "Back"
  end

  test "updating a Mandarin preference" do
    visit mandarin_preferences_url
    click_on "Edit", match: :first

    fill_in "Pref", with: @mandarin_preference._pref
    fill_in "Actor Tone 1", with: @mandarin_preference.actor_tone_1
    fill_in "Actor Tone 2", with: @mandarin_preference.actor_tone_2
    fill_in "Actor Tone 3", with: @mandarin_preference.actor_tone_3
    fill_in "Actor Tone 4", with: @mandarin_preference.actor_tone_4
    fill_in "Actor Tone 5", with: @mandarin_preference.actor_tone_5
    fill_in "Character Variant Pref", with: @mandarin_preference.character_variant_pref
    fill_in "Classifier Active Field", with: @mandarin_preference.classifier_active_field
    fill_in "Css Pref", with: @mandarin_preference.css_pref
    fill_in "Etymology Active Field", with: @mandarin_preference.etymology_active_field
    fill_in "Image Active Field", with: @mandarin_preference.image_active_field
    fill_in "Initial Final Active Field", with: @mandarin_preference.initial_final_active_field
    fill_in "Learned From Active Field", with: @mandarin_preference.learned_from_active_field
    fill_in "Mnemonic Active Field", with: @mandarin_preference.mnemonic_active_field
    fill_in "Notes Active Field", with: @mandarin_preference.notes_active_field
    fill_in "Opposite Active Field", with: @mandarin_preference.opposite_active_field
    fill_in "Part Of Speech Active Field", with: @mandarin_preference.part_of_speech_active_field
    fill_in "Revision", with: @mandarin_preference.revision_id
    fill_in "Similar Active Field", with: @mandarin_preference.similar_active_field
    fill_in "Tags Active Field", with: @mandarin_preference.tags_active_field
    fill_in "Tone Color 1", with: @mandarin_preference.tone_color_1
    fill_in "Tone Color 2", with: @mandarin_preference.tone_color_2
    fill_in "Tone Color 3", with: @mandarin_preference.tone_color_3
    fill_in "Tone Color 4", with: @mandarin_preference.tone_color_4
    fill_in "Tone Color 5", with: @mandarin_preference.tone_color_5
    fill_in "Understudy Tone 1", with: @mandarin_preference.understudy_tone_1
    fill_in "Understudy Tone 2", with: @mandarin_preference.understudy_tone_2
    fill_in "Understudy Tone 3", with: @mandarin_preference.understudy_tone_3
    fill_in "Understudy Tone 4", with: @mandarin_preference.understudy_tone_4
    fill_in "Understudy Tone 5", with: @mandarin_preference.understudy_tone_5
    fill_in "User", with: @mandarin_preference.user_id
    fill_in "Vote Active Field", with: @mandarin_preference.vote_active_field
    click_on "Update Mandarin preference"

    assert_text "Mandarin preference was successfully updated"
    click_on "Back"
  end

  test "destroying a Mandarin preference" do
    visit mandarin_preferences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mandarin preference was successfully destroyed"
  end
end
