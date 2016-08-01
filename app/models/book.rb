class Book < ApplicationRecord
  before_save
  validates :title, presence: true
  validates :author, presence: true
  validates :price, presence: true
  validates_numericality_of :price, greater_than: 30
  private
  def check_price
    Book
  end

end
