class BooksController < ApplicationController

  def create
   @book = Book.new(book_params)
   @book.user_id = current_user.id
   @book.save
  redirect_to root_path
  end


  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:image, :title, :body)
  end

  #private
  #def book_params
  #  params.require(:book).permit(:title, :body)
 # end

end
