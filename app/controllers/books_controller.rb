class BooksController < ApplicationController

  def index

  end

  def update
      p "enter here"
      @book = Book.find_by(params[:id])
      @book.attributes = book_params
      if @book.save

        render "show"
      else
        render "edit"
      end
  end

  def delete

  end

  def edit
      @book = Book.find_by(params[:id])
  end

  def show
    @book = Book.find_by(params[:id])
  end

  private

  def book_params
    params[:book].permit!
  end


end
