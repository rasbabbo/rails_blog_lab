class Tag < ActiveRecord::Base
	has_many :links
	has_many :posts, :through => :links
end
