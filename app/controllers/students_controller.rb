class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end
  
  def grades
    render json: Student.all.order(grade: :desc)
  end
end
