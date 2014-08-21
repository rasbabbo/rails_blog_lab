class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
	end

	def create
		new_post = params[:post].permit(:title, :description, :author)
		post_holder = Post.create(new_post)

		new_tag = params[:tag].permit(:name)

		if new_tag["name"] != nil
			exists = Tag.find_by_name(new_tag["name"])
				if exists ==  nil
					tag_holder = Tag.create(new_tag)
					post_holder.tags << tag_holder

				else
					post_holder.tags << exists
				end
			end

		redirect_to "/posts"
	end



	def show
		id = params[:id]
		@post = Post.find(id)
	end


end
