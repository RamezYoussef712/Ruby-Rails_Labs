class BooksController < ApplicationController
  http_basic_authenticate_with name: 'Ramez', password: '123456'

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to root_path, status: :see_other, notice: 'The book was successfully destroyed.'
  end

  private

  def book_params
    params.require(:book).permit(:name, :description, :price, :image)
  end
end
