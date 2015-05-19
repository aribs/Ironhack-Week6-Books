class BooksController < ApplicationController
	def index
		@books = Book.lastest
	end
	def show
		@book = Book.find params[:id]
	end
	def calculate_rating
		@book = Book.find params[:id]
		@book.rating = update_rating
		@book.save
		@books = Book.lastest
		redirect_to root_path
	end
	def update
		@book = Book.find params[:id]
		@book.rating = @book.update_rating
		@book.update book_params
		redirect_to books_path
	end
	private
	def book_params #Método privado que devuelve los parámetros que utilizaremos en el método create
		params.require(:book). permit(:name, :price, :description, :rating, :n_votes)
	end
end
