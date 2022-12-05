class BooksController < ApplicationController
    def index
        books = Book.all
          render json:books, status: :ok
      end
      def create
          book= @current_user.books.create!(book_params)
          render json: book, status: :created
      end
      private
      def book_params
          params.permit(:title,:author,:publication_year,:user_id)
      end
end
