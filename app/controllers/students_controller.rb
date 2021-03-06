class StudentsController < ApplicationController

	def show
    	@student = Student.find(params[:id])
  	end

	def new 
		@student = Student.new
	end

	def create 
		@student = Student.new(params.require(:student))
		@student.save
		redirect_to @student
	end

	
	def edit 
		@student = Student.find(params[:id])
	end

	  def update
	    @student = Student.find(params[:id])
	    @student.update(params.require(:student))
	    redirect_to students_path(@student)
  end

end


