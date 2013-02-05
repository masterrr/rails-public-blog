class PostController < ApplicationController
	def index
		@posts = Post.order('created_at DESC').limit(15)
	end
	def create
		Post.new(:title => params[:title], :bodytext => params[:bodytext], :ip => request.ip).save;
		redirect_to(:back)
	end

end
