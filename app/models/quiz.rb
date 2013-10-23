class Quiz < ActiveRecord::Base
	has_many :questions, dependent: :destroy
	belongs_to :topic
	
	attr_accessible :name, :topic_id

	attr_accessible :questions_attributes
	accepts_nested_attributes_for :questions, allow_destroy: true
	
end