class GradesController < ApplicationController
  before_action :set_grade, only: [:show, :edit, :update, :destroy]

  # GET /grades
  # GET /grades.json
  def index
    # @search = Grade.search(params[:q])
    # @grades = @search.result.order(:student_id).page(params[:page])
    # @grades=Grade.where(course_id:params[:course_id]).page(params[:page])
    @course=params[:course_id]
    @grad=Grade.where(course_id:@course).order('student_id ASC').page(params[:page])

    @search =  @grad.search(params[:q])
    @grades= @search.result.order(:student_id).page(params[:page])

     respond_to do |format|
      format.html
      format.xlsx
    end
    # @grades=Grade.all.page(params[:page])
end

  # GET /grades/1
  # GET /grades/1.json
  def show
  end

  # GET /grades/new
  def new
    @grade = Grade.new
  end

  # GET /grades/1/edit
  def edit
  end

  # POST /grades
  # POST /grades.json
  def create
    @grade = Grade.new(grade_params)

    respond_to do |format|
      if @grade.save
        format.html { redirect_to courses_path, notice: 'Grade was successfully created.' }
        format.json { render :show, status: :created, location: @grade }
      else
        format.html { render :new }
        format.json { render json: @grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grades/1
  # PATCH/PUT /grades/1.json
  def update
    respond_to do |format|
      if @grade.update(grade_params)
        format.html { redirect_to courses_path, notice: 'Grade was successfully updated.' }
        format.json { render :show, status: :ok, location: @grade }
      else
        format.html { render :edit }
        format.json { render json: @grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grades/1
  # DELETE /grades/1.json
  def destroy
    @grade.destroy
    respond_to do |format|
      format.html { redirect_to courses_path, notice: 'Grade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = Grade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grade_params
      params.require(:grade).permit(:student_id, :names, :quiz_1, :quiz_2, :quiz_3, :assignment_1, :assignment_2, :assignment_3, :mid_exam, :final_exam, :out_of_100, :out_of_20, :course_id)
    end
end
