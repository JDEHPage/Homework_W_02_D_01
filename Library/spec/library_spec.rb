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

end



  def test_book_name
    book = book_name(@book1)
    assert_equal("The_Wheel_of_Time", book)
  end


 def test_book_info
   book_details = @book2
   book = book_info(book_details[:title], @books)
   assert_equal(book_details, book)
 end


 def test_book_rental_info
   book_details = @book2
   book = book_rental_info(book_details[:title], @books)
   assert_equal(book_details[:rental_details], book)
 end




def test_add_book_to_books
  result = add_book_to_books(@book4, "A_Conflict_of_visions")
  assert_equal("A_Conflict_of_visions", result)
end



def test_add_rental_info_to_book
  result = add_rental_info_to_book(@book4, "Mike", "04/01/17")
  assert_equal({student_name: "Mike", date: "04/01/17"}, result)
end


  end



  # Create a method that takes in a book title and adds it to our
  # book list (add a new hash for the book with the student name
  # and date being left as empty strings)

  # Create a method that changes the rental details of a book by
  # taking in the title of the book, the student renting it and the date it's due to be returned.
