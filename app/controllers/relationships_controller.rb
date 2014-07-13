class RelationshipsController < ApplicationController
before_action :signed_in_user

	def create
		@course = Course.find(params[:relationship][:sender_id])
	    current_user.enroll!(@course)
    	redirect_to @student
	end

	def destroy
		@course = Relationship.find(params[:id]).sender
    	current_user.unroll!(@course)
    	redirect_to @course

	end

end