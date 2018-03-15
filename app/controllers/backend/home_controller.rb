class Backend::HomeController < ApplicationController
  def index
    @post = Post.new
    @post.title = "First post"
    @post.text = "Sample content"
    @post.save()
    render :text => "Post created!"
  end
  def xinchao
    render 'index'
  end
end
