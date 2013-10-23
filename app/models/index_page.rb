class IndexPage < ActiveRecord::Base
	belongs_to :admin_user
  attr_accessible :description1, :description2, :description3, :title

  
end
