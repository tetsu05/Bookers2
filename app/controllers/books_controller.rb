class BooksController < ApplicationController

  def create
   @book = Book.new(book_params)
   @book.user_id = current_user.id
   @book.save
   flash[:notice] = "You have  book successfully"
  redirect_to "/books/#{@book.id}"
  end


  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    flash[:notice] = "You have updated book successfully"
    redirect_to "/books/#{@book.id}"
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to "/books"
  end

  private
  def book_params
    params.require(:book).permit(:image, :title, :body)
  end

  #private
  #def book_params
   # params.require(:book).permit(:title, :body)
  #end

end
