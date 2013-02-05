class PostController < ApplicationController
	def index
		@posts = Post.order('created_at DESC').limit(15)
		render :index
	end

	def create
		Post.new(:title => params[:title], :bodytext => params[:bodytext], :ip => request.ip).save;
	end

	def get_posts
		@posts = Post.order('created_at DESC').limit(15)
		render :partial => "postlist"
	end

end
