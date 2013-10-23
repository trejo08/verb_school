class Unit < ActiveRecord::Base
	has_many :topics, dependent: :destroy
	
	attr_accessible :aproved, :title

	attr_accessible :topics_attributes
	accepts_nested_attributes_for :topics, allow_destroy: true

end
