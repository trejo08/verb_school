class Topic < ActiveRecord::Base
	has_many :quizzes, dependent: :destroy
	belongs_to :unit
	
	attr_accessible :content, :title, :unit_id

	attr_accessible :quizzes_attributes
	accepts_nested_attributes_for :quizzes, allow_destroy: true
	
end