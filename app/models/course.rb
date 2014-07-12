class Course < ActiveRecord::Base
	belongs_to :teacher
	has_many :cvideos
	validates :name, presence: true, length: { maximum: 50 }
	validates :description, presence: true

  	has_many :relationships, foreign_key: "sender_id", dependent: :destroy
	has_many :receivers, through: :relationships
end