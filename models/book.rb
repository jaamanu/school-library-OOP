class Book
  # setters & getters
  attr_accessor :title, :author, :rentals

  # constructor
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  # add rental method
  def add_rental(book)
    @rentals.push(book)
  end

  def to_s
    "Title: \"#{@title}\", Author: #{author}"
  end
end
