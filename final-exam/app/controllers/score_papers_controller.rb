class ScorePapersController < ApplicationController
  before_action :set_score_paper, only: [:show, :edit, :update, :destroy]

  # GET /score_papers
  # GET /score_papers.json
  def index
    @score_papers = ScorePaper.all
  end

  # GET /score_papers/1
  # GET /score_papers/1.json
  def show
  end

  # GET /score_papers/new
  def new
    @score_paper = ScorePaper.new
  end

  # GET /score_papers/1/edit
  def edit
  end

  # POST /score_papers
  # POST /score_papers.json
  def create
    @score_paper = ScorePaper.new(score_paper_params)

    respond_to do |format|
      if @score_paper.save
        format.html { redirect_to @score_paper, notice: 'Score paper was successfully created.' }
        format.json { render :show, status: :created, location: @score_paper }
      else
        format.html { render :new }
        format.json { render json: @score_paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /score_papers/1
  # PATCH/PUT /score_papers/1.json
  def update
    respond_to do |format|
      if @score_paper.update(score_paper_params)
        format.html { redirect_to @score_paper, notice: 'Score paper was successfully updated.' }
        format.json { render :show, status: :ok, location: @score_paper }
      else
        format.html { render :edit }
        format.json { render json: @score_paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /score_papers/1
  # DELETE /score_papers/1.json
  def destroy
    @score_paper.destroy
    respond_to do |format|
      format.html { redirect_to score_papers_url, notice: 'Score paper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score_paper
      @score_paper = ScorePaper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def score_paper_params
      params.require(:score_paper).permit(:name, :studentID, :score)
    end
end
