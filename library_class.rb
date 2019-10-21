class Library

#create a class for a library that has an array of books


def initialize (books_array)
  @books_array = books_array
end

  # def initialize (title, rental_details)
  #   @title = title
  #   @rental_details = rental_details
  #
  # end

#create a getter for the books

  def get_book(book_num)
    return @books_array[book_num]
  end

  def find_by_title(query_title)
    match = nil
    for book in @books_array
      match = book if book[:title] == query_title
    end
    return match
  end

end
