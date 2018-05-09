require 'test_helper'

class MandarinPreferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mandarin_preference = mandarin_preferences(:one)
  end

  test "should get index" do
    get mandarin_preferences_url
    assert_response :success
  end

  test "should get new" do
    get new_mandarin_preference_url
    assert_response :success
  end

  test "should create mandarin_preference" do
    assert_difference('MandarinPreference.count') do
      post mandarin_preferences_url, params: { mandarin_preference: { _pref: @mandarin_preference._pref, actor_tone_1: @mandarin_preference.actor_tone_1, actor_tone_2: @mandarin_preference.actor_tone_2, actor_tone_3: @mandarin_preference.actor_tone_3, actor_tone_4: @mandarin_preference.actor_tone_4, actor_tone_5: @mandarin_preference.actor_tone_5, character_variant_pref: @mandarin_preference.character_variant_pref, etymology_active_field: @mandarin_preference.etymology_active_field, image_active_field: @mandarin_preference.image_active_field, learned_from_active_field: @mandarin_preference.learned_from_active_field, mnemonic_active_field: @mandarin_preference.mnemonic_active_field, notes_active_field: @mandarin_preference.notes_active_field, part_of_speech_active_field: @mandarin_preference.part_of_speech_active_field, similar_active_field: @mandarin_preference.similar_active_field, tone_color_1: @mandarin_preference.tone_color_1, tone_color_2: @mandarin_preference.tone_color_2, tone_color_3: @mandarin_preference.tone_color_3, tone_color_4: @mandarin_preference.tone_color_4, tone_color_5: @mandarin_preference.tone_color_5, understudy_tone_1: @mandarin_preference.understudy_tone_1, understudy_tone_2: @mandarin_preference.understudy_tone_2, understudy_tone_3: @mandarin_preference.understudy_tone_3, understudy_tone_4: @mandarin_preference.understudy_tone_4, understudy_tone_5: @mandarin_preference.understudy_tone_5, user_id: @mandarin_preference.user_id } }
    end

    assert_redirected_to mandarin_preference_url(MandarinPreference.last)
  end

  test "should show mandarin_preference" do
    get mandarin_preference_url(@mandarin_preference)
    assert_response :success
  end

  test "should get edit" do
    get edit_mandarin_preference_url(@mandarin_preference)
    assert_response :success
  end

  test "should update mandarin_preference" do
    patch mandarin_preference_url(@mandarin_preference), params: { mandarin_preference: { _pref: @mandarin_preference._pref, actor_tone_1: @mandarin_preference.actor_tone_1, actor_tone_2: @mandarin_preference.actor_tone_2, actor_tone_3: @mandarin_preference.actor_tone_3, actor_tone_4: @mandarin_preference.actor_tone_4, actor_tone_5: @mandarin_preference.actor_tone_5, character_variant_pref: @mandarin_preference.character_variant_pref, etymology_active_field: @mandarin_preference.etymology_active_field, image_active_field: @mandarin_preference.image_active_field, learned_from_active_field: @mandarin_preference.learned_from_active_field, mnemonic_active_field: @mandarin_preference.mnemonic_active_field, notes_active_field: @mandarin_preference.notes_active_field, part_of_speech_active_field: @mandarin_preference.part_of_speech_active_field, similar_active_field: @mandarin_preference.similar_active_field, tone_color_1: @mandarin_preference.tone_color_1, tone_color_2: @mandarin_preference.tone_color_2, tone_color_3: @mandarin_preference.tone_color_3, tone_color_4: @mandarin_preference.tone_color_4, tone_color_5: @mandarin_preference.tone_color_5, understudy_tone_1: @mandarin_preference.understudy_tone_1, understudy_tone_2: @mandarin_preference.understudy_tone_2, understudy_tone_3: @mandarin_preference.understudy_tone_3, understudy_tone_4: @mandarin_preference.understudy_tone_4, understudy_tone_5: @mandarin_preference.understudy_tone_5, user_id: @mandarin_preference.user_id } }
    assert_redirected_to mandarin_preference_url(@mandarin_preference)
  end

  test "should destroy mandarin_preference" do
    assert_difference('MandarinPreference.count', -1) do
      delete mandarin_preference_url(@mandarin_preference)
    end

    assert_redirected_to mandarin_preferences_url
  end
end
