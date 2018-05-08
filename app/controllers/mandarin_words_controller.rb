class MandarinWordsController < ApplicationController
  before_action :set_mandarin_word, only: [:show, :edit, :update, :destroy]

  # GET /mandarin_words
  # GET /mandarin_words.json
  def index
    @mandarin_words = MandarinWord.all
  end

  # GET /mandarin_words/1
  # GET /mandarin_words/1.json
  def show
  end

  # GET /mandarin_words/new
  def new
    @mandarin_word = MandarinWord.new
  end

  # GET /mandarin_words/1/edit
  def edit
  end

  # POST /mandarin_words
  # POST /mandarin_words.json
  def create
    @mandarin_word = MandarinWord.new(mandarin_word_params)

    respond_to do |format|
      if @mandarin_word.save
        format.html { redirect_to @mandarin_word, notice: 'Mandarin word was successfully created.' }
        format.json { render :show, status: :created, location: @mandarin_word }
      else
        format.html { render :new }
        format.json { render json: @mandarin_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mandarin_words/1
  # PATCH/PUT /mandarin_words/1.json
  def update
    respond_to do |format|
      if @mandarin_word.update(mandarin_word_params)
        format.html { redirect_to @mandarin_word, notice: 'Mandarin word was successfully updated.' }
        format.json { render :show, status: :ok, location: @mandarin_word }
      else
        format.html { render :edit }
        format.json { render json: @mandarin_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mandarin_words/1
  # DELETE /mandarin_words/1.json
  def destroy
    @mandarin_word.destroy
    respond_to do |format|
      format.html { redirect_to mandarin_words_url, notice: 'Mandarin word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mandarin_word
      @mandarin_word = MandarinWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mandarin_word_params
      params.require(:mandarin_word).permit(:user_id, :entry_id, :view_status, :meaning, :radical, :stroke_order, :character_simplified, :character_traditional, :pinyin_numbered, :pinyin_marked, :pinyin, :tone_number, :mnemonic, :notes, :learned_from, :etymology, :sound_file, :image_file, :tags, :opposites_standard, :similar_standard, :opposites_traditional, :similar_traditional, :part_of_speech, :classifier, :initial, :final, :duplicate_from, :ip_address, :vote_value)
    end
end
