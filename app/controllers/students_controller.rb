class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update]
  
  def index
    @students = Student.all
  end

  def show
    # @student = Student.find(params[:id])
  end


  def update
    # @student = Student.find(params[:id]) => not needed beacuse set_student is helper metheod. Update has access to @student variable.
    @student.toggle!(:active)
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end