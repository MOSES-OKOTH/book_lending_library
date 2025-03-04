class Borrowing < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :due_date, presence: true

  before_create :set_due_date
  after_create :mark_book_unavailable
  after_destroy :mark_book_available

  private

  def set_due_date
    self.due_date = Date.today + 14.days
  end

  def mark_book_unavailable
    book.update(available: false)
  end

  def mark_book_available
    book.update(available: true)
  end
end
