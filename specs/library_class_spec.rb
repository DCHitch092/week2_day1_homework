require('minitest/autorun')
require('minitest/rg')
require_relative('../library_class.rb')

class TestLibraryClass < MiniTest::Test

def setup
  @books_list =
  [

    { title: "war_and_peace",
      rental_details: {
        student_name: "Yana",
        date: "10/11/20"
      }
    },

    { title: "the_pearl",
      rental_details: {
        student_name: "Marc",
        date: "20/11/20"
      }

    },

    { title: "h2g2",
      rental_details: {
        student_name: "Hitch",
        date: "14/05/20"
        }
    }
  ]
end


  def test_get_book

    library_class = Library.new(@books_list)
    result = library_class.get_book(1)
    assert_equal({ title: "the_pearl",
      rental_details: {
        student_name: "Marc",
        date: "20/11/20"
      }

      }, result)
  end

# Create a method that takes in a book title
# and returns all of the information about that book.

  def test_get_book_from_title
    library_class=Library.new(@books_list)
    result = library_class.find_by_title("the_pearl")
    assert_equal(
      { title: "the_pearl",
        rental_details: {
          student_name: "Marc",
          date: "20/11/20"
        }
      }, result)
  end

# Create a method that takes in a book title
# and returns only the rental details for that book.

  def test_return_rental_details_by_title__0
    library_class = Library.new(@books_list)
    result = library_class.find_rental_details_by_title("war_and_peace")
    assert_equal({
    student_name: "Yana",
    date: "10/11/20"
    }, result)
  end

# tests for a method that
# that takes in a book title and adds it to our book list
# (add a new hash for the book with
# the student name and date being left as empty strings)"

def test_add_book_by_title
  library_class = Library.new(@books_list)

#creates variable to save on typing
  new_title = "around_the_world_in_80_days"

#calls function to add book by title
  library_class.add_book_by_title(new_title)

#looks up book with this new title for result check
  result = library_class.find_by_title(new_title)

  assert_equal({ title: "around_the_world_in_80_days",
  rental_details: {
    student_name: "",
    date: ""
  }
  }, result)
end




end
