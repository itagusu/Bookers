class BooksController < ApplicationController
  def top
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @books = Book.new
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(@books)
    
  end

  def edit
    @books = Book.all
  end

  def destroy
    @book = Book.find(params[:id])
    book.destroy
    redirect_to book_path(@book.id)
  end

private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
