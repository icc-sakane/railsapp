class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def show
    @student = Student.find(params[:id])
  end
  def add
    @student = Student.new
  end
  def create
    if request.post?
      Student.create(student_params)
    end
    redirect_to "/students/index"
  end

  def edit
    @student = Student.find(params[:id])
  end
  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to "/students/index"
  end
private
  def student_params
    params.require(:student).permit(:name,:age)
  end
end
