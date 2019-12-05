class ExamsController < ApplicationController
  before_action :set_exam, only: [:show, :edit, :update, :destroy]
  before_action :set_patient

  def index
    @exams = @patient.exams
    render json: @exams.includes(:point_po, :point_or, :point_a, :point_n), include: [:point_po, :point_or, :point_n, :point_a], methods: :maxillary_depth_angle
  end

  # GET /exams/1
  # GET /exams/1.json
  def show
  end

  def new
    @exam = Exam.new
    @exam.point_po = Point.new
    @exam.point_or = Point.new
    @exam.point_n = Point.new
    @exam.point_a = Point.new
    render  "_form", layout: false
  end

  def edit
    @exam = Exam.find(params[:id])
    render "_form", layout: false
  end

  # POST /exams
  # POST /exams.json
  def create
    @exam = Exam.new(exam_params)
    @exam.patient = @patient

    if @exam.save
      render json: @exam, include: [:point_po, :point_or, :point_n, :point_a], methods: :maxillary_depth_angle, status: :created
    else
      render json: @exam.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exams/1
  # PATCH/PUT /exams/1.json
  def update
    if @exam.update(exam_params)
      render json: @exam, include: [:point_po, :point_or, :point_n, :point_a], methods: :maxillary_depth_angle
    else
      render json: @exam.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exams/1
  # DELETE /exams/1.json
  def destroy
    @exam.destroy
    respond_to do |format|
      format.html { redirect_to patient_url(@patient), notice: 'Exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam
      @exam = Exam.find(params[:id])
    end

    def set_patient
      @patient = Patient.find(params[:patient_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_params
      params.require(:exam).permit(point_po_attributes: [:x,:y], point_or_attributes: [:x,:y], point_n_attributes: [:x,:y], point_a_attributes: [:x,:y])
    end
end
