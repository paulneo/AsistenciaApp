class StudentAssistancesController < ApplicationController
  before_action :find_student_assistance, only: [:show,:edit,:update,:destroy]

    def index
      @student_assistances = StudentAssistance.all

    end

    def show

    end

    def new
      @student_assistance = StudentAssistance.new

    end

    def create
      @student_assistance = StudentAssistance.new(student_assistance_params)
      if @student_assistance.save
        redirect_to  @student_assistance
      else
        render :new
      end
    end

    def edit

    end

    def update
      if @student_assistance.update student_assistance_params
        redirect_to @student_assistance
      else
        render :edit
      end
    end

    def destroy
      @student_assistance.destroy
      redirect_to student_assistances_path
    end

    private

    def find_student_assistance
      @student_assistance = StudentAssistance.find(params[:id])
    end

    def student_assistance_params
      params.require(:student_assistance).permit(:scheduled_event_id, :student_enrollment_id, :registered_time, :assistance)
    end

end
