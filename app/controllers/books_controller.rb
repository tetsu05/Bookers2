class BooksController < ApplicationController
  
  def new
    @book = Book.new
  end

  def create
  
  end

  def index
    @user = current_user
    @books = Book.all
  end

  def show
  end
  
  def edit
  end
  
  def update
  end

  def destroy
  end
  
  private
  def book_params
    params.require(:book).permit(:image) 
  end
  
end
