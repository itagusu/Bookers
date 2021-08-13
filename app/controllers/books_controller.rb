class BooksController < ApplicationController
  def top
  end

  def index
    @books = Book.all
  end

  def show
    @books = Book.new
  end

  def new
    
  
  end

  def create
    book = Book.new(book_params)
    
    book.save
    
    redirect_to book_path(@book)
    
  end

  def edit
    @books = Book.all
  end

  def destroy
    @books = Book.all
    book.destroy
    redirect_to books_path
  end

private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
