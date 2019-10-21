class Library

attr_accessor :books_array

#create a class for a library that has an array of books

def initialize (books_list)
  @books_list = books_list
end

  # def initialize (title, rental_details)
  #   @title = title
  #   @rental_details = rental_details
  #
  # end

#create a getter for the books

  def get_book(book_num)
    return @books_list[book_num]
  end

  def find_by_title(query_title)
    match = nil
    for book in @books_list
      match = book if book[:title] == query_title
    end
    return match
  end

  def find_rental_details_by_title(book_title)
    book_found = find_by_title(book_title)
    return book_found[:rental_details]
  end

  def add_book_by_title(new_title)
  # new_student_name = "" if new_student_name.empty
  # new_date = "" if new_student_date.empty
    @books_list.push(
      {title: new_title, rental_details: {student_name: "", date:""}})
  end

end
