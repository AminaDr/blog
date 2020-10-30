class PostsController < ApplicationController

  def index
    @posts = Post.paginate(page: params[:page], per_page: 2)
  end

  def create
    @post = Post.new (post_params)

    if @post.save
      redirect_to posts_path
    else
      render "new"
    end
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes (post_params)    #wenn die Änderungen mit den Parameter übereinstimmen
      redirect_to posts_path
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def post_params
    params.require(:post).permit(:titel, :content)
  end

end
