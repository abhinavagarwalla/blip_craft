class Relationship < ActiveRecord::Base

	belongs_to :receiver, class_name: "Student"
  	belongs_to :sender, class_name: "Course"
  	validates :receiver_id, presence: true
 	validates :sender_id, presence: true

end
