class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end
  
  def index
    @book = Book.new
    @books = Book.all
    @user = User.find(current_user.id)
    @users = User.all
  end
  
  def show
    @book = Book.find(params[:id])
    @new_book = Book.new
    @user = User.find(@book.user_id)
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
  
  def edit
    @book = Book.find(params[:id])
    
    
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
