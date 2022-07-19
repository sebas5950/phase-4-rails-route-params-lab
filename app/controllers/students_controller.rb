class StudentsController < ApplicationController

  def index
    students = if params[:first_name]
            Student.by_name(params[:first_name])
    else 
      Student.all
    end
    render json: students
  end

  def show
    show = Student.find(params[:id])
    render json: show
  end



end
