class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update]

  def show
  end

  

  def new
    @post = Post.new
  end

  def create 
    @post = Post.new(post_params)

    if @post.valid?
      @post.save
      redirect_to @post
    else 
      error_styles(@post)
      render :new 
    end
  end



  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else 
      error_styles(@post)
      render :edit
    end
  end








  private

  def post_params
    params.permit(:title, :category, :content)
  end

  def find_post
    @post = Post.find_by(params[:id])
  end

  def error_styles(post)
    @title_err    = 'field_with_errors' if !post.errors[:title].empty?
    @category_err = 'field_with_errors' if !post.errors[:category].empty?
    @content_err  = 'field_with_errors' if !post.errors[:content].empty?
  end

end
