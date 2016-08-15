class ResponsableStudentsController < ApplicationController
  before_action :set_responsable_student, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /responsable_students
  # GET /responsable_students.json
  def index
    @responsable_students = ResponsableStudent.all
  end

  # GET /responsable_students/1
  # GET /responsable_students/1.json
  def show
  end

  # GET /responsable_students/new
  def new
    @responsable_student = ResponsableStudent.new
  end

  # GET /responsable_students/1/edit
  def edit
  end

  # POST /responsable_students
  # POST /responsable_students.json
  def create
    @responsable_student = ResponsableStudent.new(responsable_student_params)

    respond_to do |format|
      if @responsable_student.save
        format.html { redirect_to @responsable_student, notice: 'Responsable student was successfully created.' }
        format.json { render :show, status: :created, location: @responsable_student }
      else
        format.html { render :new }
        format.json { render json: @responsable_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /responsable_students/1
  # PATCH/PUT /responsable_students/1.json
  def update
    respond_to do |format|
      if @responsable_student.update(responsable_student_params)
        format.html { redirect_to @responsable_student, notice: 'Responsable student was successfully updated.' }
        format.json { render :show, status: :ok, location: @responsable_student }
      else
        format.html { render :edit }
        format.json { render json: @responsable_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responsable_students/1
  # DELETE /responsable_students/1.json
  def destroy
    @responsable_student.destroy
    respond_to do |format|
      format.html { redirect_to responsable_students_url, notice: 'Responsable student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_responsable_student
      @responsable_student = ResponsableStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def responsable_student_params
      params.require(:responsable_student).permit(:name, :phone, :student_id)
    end
end
