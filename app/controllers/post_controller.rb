class PostController < ApplicationController
  def new
  end
  def create
    # @post = Post.new
    # @post.title = params[:post]['title']
    # @post.text  = params[:post]['content']
    # @post.save()
    @post = Post.new(params.require(:post).permit(:title, :text))
    @post.save
  end
  def show
    @post = Post.find(params[:id])
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title, :text))
      render('update')
    else
      render :text => 'Not success'
    end
  end
  def delete
    @post = Post.find(params[:id])
    @post.destroy
  end
end
