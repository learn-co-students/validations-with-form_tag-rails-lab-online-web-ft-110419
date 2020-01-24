class PostsController < ApplicationController


  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create 
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
    else 
      render :new 
    end
  end


  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    
    if @post.update_attributes(post_params)
      redirect_to post_path(@post)
    else 
      render :edit
    end
  end




  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
