class StudentsController < ApplicationController
  def index
    if params[:name]
      @students = Student.where("name LIKE ?", "%#{params[:name]}%")
    else
      @students = Student.all
    end
  end
  
  def show
    @student = Student.find(params[:id])
  end
  
  

end
