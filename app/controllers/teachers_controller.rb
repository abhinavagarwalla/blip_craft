class TeachersController < ApplicationController
  def show
  	@teacher = Teacher.find(params[:id])
  	@courses = @teacher.courses.paginate(page: params[:page])
  end
end
