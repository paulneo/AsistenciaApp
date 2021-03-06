class StudentEnrollmentsController < ApplicationController
  before_action :find_student_enrollment, only: [:show,:edit,:update,:destroy]

  def index
    @student_enrollments = StudentEnrollment.all

  end

  def show
    @qr = RQRCode::QRCode.new("#{@student_enrollment.id}", size: 4, :level => :m, :mode => :number)
  end

  def new
    @student_enrollment = StudentEnrollment.new

  end

  def create
    @student_enrollment = StudentEnrollment.new(student_enrollment_params)
    if @student_enrollment.save
      redirect_to  @student_enrollment
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @student_enrollment.update student_enrollment_params
      redirect_to @student_enrollment
    else
      render :edit
    end
  end

  def destroy
    @student_enrollment.destroy
    redirect_to student_enrollments_path
  end

  private

  def find_student_enrollment
    @student_enrollment = StudentEnrollment.find(params[:id])
  end

  def student_enrollment_params
    params.require(:student_enrollment).permit(:person_id,:period_id,:hours)
  end

end
