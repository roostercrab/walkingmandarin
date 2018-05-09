class MandarinPreferencesController < ApplicationController
  before_action :set_mandarin_preference, only: [:show, :edit, :update, :destroy]

  # GET /mandarin_preferences
  # GET /mandarin_preferences.json
  def index
    @mandarin_preferences = MandarinPreference.all
  end

  # GET /mandarin_preferences/1
  # GET /mandarin_preferences/1.json
  def show
  end

  # GET /mandarin_preferences/new
  def new
    @mandarin_preference = MandarinPreference.new
  end

  # GET /mandarin_preferences/1/edit
  def edit
  end

  # POST /mandarin_preferences
  # POST /mandarin_preferences.json
  def create
    @mandarin_preference = MandarinPreference.new(mandarin_preference_params)

    respond_to do |format|
      if @mandarin_preference.save
        format.html { redirect_to @mandarin_preference, notice: 'Mandarin preference was successfully created.' }
        format.json { render :show, status: :created, location: @mandarin_preference }
      else
        format.html { render :new }
        format.json { render json: @mandarin_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mandarin_preferences/1
  # PATCH/PUT /mandarin_preferences/1.json
  def update
    respond_to do |format|
      if @mandarin_preference.update(mandarin_preference_params)
        format.html { redirect_to @mandarin_preference, notice: 'Mandarin preference was successfully updated.' }
        format.json { render :show, status: :ok, location: @mandarin_preference }
      else
        format.html { render :edit }
        format.json { render json: @mandarin_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mandarin_preferences/1
  # DELETE /mandarin_preferences/1.json
  def destroy
    @mandarin_preference.destroy
    respond_to do |format|
      format.html { redirect_to mandarin_preferences_url, notice: 'Mandarin preference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mandarin_preference
      @mandarin_preference = MandarinPreference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mandarin_preference_params
      params.require(:mandarin_preference).permit(:user_id, :tone_color_1, :tone_color_2, :tone_color_3, :tone_color_4, :tone_color_5, :actor_tone_1, :actor_tone_2, :actor_tone_3, :actor_tone_4, :actor_tone_5, :understudy_tone_1, :understudy_tone_2, :understudy_tone_3, :understudy_tone_4, :understudy_tone_5, :_pref, :character_variant_pref, :mnemonic_active_field, :notes_active_field, :learned_from_active_field, :etymology_active_field, :image_active_field, :tags_active_field, :opposite_active_field, :similar_active_field, :part_of_speech_active_field, :classifier_active_field, :initial_final_active_field, :vote_active_field, :css_pref, :revision_id)
    end
end
