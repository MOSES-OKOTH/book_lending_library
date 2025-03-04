class BorrowingsController < ApplicationController
  before_action :authenticate_user!

  def create
    book = Book.find(params[:book_id])
    if book.available?
      current_user.borrowings.create!(book: book)
      redirect_to user_profile_path, notice: "Book borrowed successfully!"
    else
      redirect_to book_path(book), alert: "This book is already borrowed."
    end
  end

  def destroy
    borrowing = current_user.borrowings.find(params[:id])
    borrowing.destroy
    redirect_to user_profile_path, notice: "Book returned successfully!"
  end
end
