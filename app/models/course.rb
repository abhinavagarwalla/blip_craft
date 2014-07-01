class Course < ActiveRecord::Base
	has_many :cvideos
	validates :name, presence: true, length: { maximum: 50 }
	validates :description, presence: true
end