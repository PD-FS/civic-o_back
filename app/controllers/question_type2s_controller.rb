class QuestionType2sController < ApplicationController
  before_action :set_question_type2, only: [:show, :edit, :update, :destroy]

  # GET /question_type2s
  # GET /question_type2s.json
  def index
    @question_type2s = QuestionType2.all
  end

  # GET /question_type2s/1
  # GET /question_type2s/1.json
  def show
  end

  # GET /question_type2s/new
  def new
    @question_type2 = QuestionType2.new
  end

  # GET /question_type2s/1/edit
  def edit
  end

  # POST /question_type2s
  # POST /question_type2s.json
  def create
    @question_type2 = QuestionType2.new(question_type2_params)

    respond_to do |format|
      if @question_type2.save
        format.html { redirect_to @question_type2, notice: 'Question type2 was successfully created.' }
        format.json { render :show, status: :created, location: @question_type2 }
      else
        format.html { render :new }
        format.json { render json: @question_type2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_type2s/1
  # PATCH/PUT /question_type2s/1.json
  def update
    respond_to do |format|
      if @question_type2.update(question_type2_params)
        format.html { redirect_to @question_type2, notice: 'Question type2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_type2 }
      else
        format.html { render :edit }
        format.json { render json: @question_type2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_type2s/1
  # DELETE /question_type2s/1.json
  def destroy
    @question_type2.destroy
    respond_to do |format|
      format.html { redirect_to question_type2s_url, notice: 'Question type2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_type2
      @question_type2 = QuestionType2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_type2_params
      params.require(:question_type2).permit(:name, :description, :color, :sn_active_qt)
    end
end
