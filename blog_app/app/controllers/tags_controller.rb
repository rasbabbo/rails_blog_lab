class TagsController < ApplicationController
	def index
		@all_tags = Tag.all.select do |tag|
			tag.posts.length > 0
		end
	end

	def show
		@tag = Tag.find_by(params[:id])
	end
end

	