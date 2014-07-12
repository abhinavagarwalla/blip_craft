class Student < ActiveRecord::Base
	belongs_to :user
	has_many :relationships, foreign_key: "receiver_id", dependent: :destroy
	has_many :senders, through: :relationships

	  def enrolled?(other_couse)
    	self.relationships.find_by(sender_id: other_course.id)
  	end

  	def enroll!(other_course)
    	self.relationships.create!(sender_id: other_course.id)
  	end

  	def unroll!(other_course)
  		self.relationships.find_by(sender_id: other_course.id).destroy
  	end
end
