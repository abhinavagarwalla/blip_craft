class StudentsController < ApplicationController
  def show
  	puts params
  	@student = Student.find(params[:id])
  	@courses = @student.senders.paginate(page: params[:page])
  end

end
