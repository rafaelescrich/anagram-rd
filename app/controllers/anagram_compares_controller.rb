class AnagramComparesController < ApplicationController
  before_action :set_anagram_compare, only: [:show, :edit, :update, :destroy]

  # GET /anagram_compares
  # GET /anagram_compares.json
  def index
    @anagram_compares = AnagramCompare.all
  end

  # GET /anagram_compares/1
  # GET /anagram_compares/1.json
  def show
  end

  # GET /anagram_compares/new
  def new
    @anagram_compare = AnagramCompare.new
  end

  # GET /anagram_compares/1/edit
  def edit
  end

  # POST /anagram_compares
  # POST /anagram_compares.json
  def create

    puts "----------------------------------------------------------------------------------------------------------"

    @anagram_compare = AnagramCompare.new(anagram_compare_params)


    respond_to do |format|
      if @anagram_compare.save
        format.html { redirect_to @anagram_compare, notice: 'Anagram compare was successfully created.' }
        format.json { render :show, status: :created, location: @anagram_compare }
      else
        format.html { render :new }
        format.json { render json: @anagram_compare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anagram_compares/1
  # PATCH/PUT /anagram_compares/1.json
  def update
    respond_to do |format|
      if @anagram_compare.update(anagram_compare_params)
        format.html { redirect_to @anagram_compare, notice: 'Anagram compare was successfully updated.' }
        format.json { render :show, status: :ok, location: @anagram_compare }
      else
        format.html { render :edit }
        format.json { render json: @anagram_compare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anagram_compares/1
  # DELETE /anagram_compares/1.json
  def destroy
    @anagram_compare.destroy
    respond_to do |format|
      format.html { redirect_to anagram_compares_url, notice: 'Anagram compare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anagram_compare
      @anagram_compare = AnagramCompare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anagram_compare_params
      params.require(:anagram_compare).permit(:original, :wannabe, :status)
    end
end
