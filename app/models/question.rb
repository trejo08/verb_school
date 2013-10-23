class Question < ActiveRecord::Base
	has_many :answers, dependent: :destroy
	belongs_to :quiz
	
	attr_accessible :text_question, :quiz_id

	attr_accessible :answers_attributes
	accepts_nested_attributes_for :answers, allow_destroy: true
	
end