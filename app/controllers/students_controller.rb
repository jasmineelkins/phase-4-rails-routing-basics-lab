class StudentsController < ApplicationController
  # GET /student
  def index
    # access data from model:
    students = Student.all

    # respond with a view:
    render json: students
  end

  def grades
    sorted_list = Student.all.order('grade DESC')
    render json: sorted_list
  end

  def highest_grade
    sorted_list = Student.all.order('grade DESC')
    render json: sorted_list[0]
  end
end
