class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update]
  
  def index
    @students = Student.all
  end

  def show
  end
 
  def update
    @student.active == false ? @student.update(active: true) : @student.update(active: false)
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end