require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup

    @book1 = {
       title: "The_Wheel_of_Time",
       rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
       }
     }

     @book2 = {
        title: "Dune",
        rental_details: {
         student_name: "Michael",
         date: "02/01/17"
        }
      }

      @book3 = {
         title: "lassy",
         rental_details: {
          student_name: "Rex",
          date: "22/12/16"
         }
       }

       @book4 = {
          title: "",
          rental_details: {
           student_name: "",
           date: ""
          }
        }

     @books = [@book1, @book2, @book3, @book4]

     @library = Library.new(@books)
end


  # def test_book_name
  #   book = book_name(@book1)
  #   assert_equal("The_Wheel_of_Time", book)
  # end

  def test_get_book_name
    assert_equal(@books, @library.get_book_name())
  end


#  def test_book_info
#    book_details = @book2
#    book = book_info(book_details[:title], @books)
#    assert_equal(book_details, book)
#  end


  def test_find_book
    expected = @book1
    actual = @library.find_book("The_Wheel_of_Time")
    assert_equal(expected, actual)
  end


#  def test_book_rental_info
#    book_details = @book2
#    book = book_rental_info(book_details[:title], @books)
#    assert_equal(book_details[:rental_details], book)
#  end

  def test_rental_info
    expected = {
     student_name: "Rex",
     date: "22/12/16"
    }
    actual = @library.rental_info("lassy")
    assert_equal(expected, actual)
  end



# def test_add_book_to_books
#   result = add_book_to_books(@book4, "A_Conflict_of_visions")
#   assert_equal("A_Conflict_of_visions", result)
# end

def test_add_book_to_books
  expected = {
     title: "Dark Tower",
     rental_details: {
      student_name: "",
      date: ""
     }
   }
   @library.add_book_to_books("Dark Tower")
   actual = @library.find_book("Dark Tower")
   assert_equal(expected, actual)
end

# def test_add_rental_info_to_book
#   result = add_rental_info_to_book(@book4, "Mike", "04/01/17")
#   assert_equal({student_name: "Mike", date: "04/01/17"}, result)
# end

  def test_rent_book
    @library.rent_book("Dune" ,"John", "22/12/17")
    book = @library.find_book("Dune")
    assert_equal("John", book[:rental_details][:student_name])
    assert_equal("22/12/17", book[:rental_details][:date])
  end


  end
