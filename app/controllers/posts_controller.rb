class PostsController < ApplicationController
  def show
    @article = Post.find(params[:id])
  end

  def edit
    @article = Post.find(params[:id])
  end

  def update
    @article = Post.find(params[:id])

    if @article.valid?
      redirect_to post_path(@article)
    else
      render :edit
    end
  end

  def new
    @article = Post.new
  end

  def create
    @article = Post.new(post_params)

    if @article.valid?
      @article.save

      redirect_to post_path(@article)
    else
      render :new
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
