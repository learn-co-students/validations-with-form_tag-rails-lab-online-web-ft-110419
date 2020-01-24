class AuthorsController < ApplicationController
  
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else 
      error_styles(@author)
      render :new
    end
  end


  def edit 
    @author = Author.find(params[:id])
  end

  def update 
    @author = Author.find(params[:id])
    if @author.update(author_params)
      @author.save 
      redirect_to author_path(@author)
    else 
      error_styles(@author)
      render :edit
    end
  end



  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end

  def error_styles(author)
    @name_err    = 'field_with_errors' if !author.errors[:name].empty?
    @email_err = 'field_with_errors' if !author.errors[:email].empty?
    @phone_number_err  = 'field_with_errors' if !author.errors[:phone_number].empty?
  end

end
