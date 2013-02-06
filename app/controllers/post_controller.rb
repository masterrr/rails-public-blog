class PostController < ApplicationController
  def index
    @posts = Post.order('created_at DESC').limit(15)
    if request.xhr?
      render :partial => "postlist"
    else
      render :index
    end
  end

  def create
    if request.xhr?
      Post.create(title: params[:title], bodytext: params[:bodytext], ip: request.ip)
      Pusher['posts'].trigger('newpost', message: 'pusher' )
      render nothing: true
    else
      redirect_to :back
    end
  end

end
