class Post < ActiveRecord::Base
	has_many :comments
	has_many :links
	has_many :tags, :through => :links

end
