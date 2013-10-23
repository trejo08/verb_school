class Answer < ActiveRecord::Base

	belongs_to :question
	attr_accessible :text_answer, :is_correct, :question_id
end
