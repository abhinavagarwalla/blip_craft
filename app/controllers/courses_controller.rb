class CoursesController < ApplicationController

	def show
		@course = Course.find(params[:id])
		@cvideos = @course.cvideos.paginate(page: params[:page])

		@students = @course.receivers.paginate(page: params[:page])
	end

	def index
		@courses = Course.all
	end

end
