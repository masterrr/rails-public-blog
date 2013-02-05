class PostController < ApplicationController
	def index
		@posts = Post.all;
	end
	def create
		current_local_ip = request.env['REMOTE_ADDR']
		Post.new(:title => params[:title], :bodytext => params[:bodytext], :ip => current_local_ip).save();
		redirect_to(:back)
	end

end
