class BooksController < ApplicationController
  def top
  end

  def index
    @books = Book.all
  end

  def show
    @books = Book.all
  end

  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
    redirect_to books_path
    else
    render :new
    end  
  end
  
  def edit
    @books = Book.all
  end

  def destroy
    @books = Book.all
    book.destroy
    redirect_to books_path
  end

  end
