require('pry')

def book_name(book)
  return book[:title]
end



def book_info(book_name, books)
  for book in books
    if (book[:title] == book_name)
      return book
    end
  end
end


  def book_rental_info(book_name, books)
    for book in books
      if (book[:title] == book_name)
        return book[:rental_details]
      end
    end
  end


  def add_book_to_books(book, new_title)
    return book[:title] << new_title
  end


  def add_rental_info_to_book (book, renter, date)
    book[:rental_details][:student_name] << renter
    book[:rental_details][:date] << date
    return book [:rental_details]
  end













# Model a Library as a class.
#
# Create a class for a Library that has an array of books.

# Each book should be a hash with a title, which is a string,
# and rental details, which is another hash with a student name and due date.


# This should look something like:
#
#   {
#     title: "lord_of_the_rings",
#     rental_details: {
#      student_name: "Jeff",
#      date: "01/12/16"
#     }
#   }
# Create a getter for the books



# Create a method that takes in a book title and returns all of the
# information about that book.

# Create a method that takes in a book title and returns only the rental
# details for that book.

# Create a method that takes in a book title and adds it to our book list
# (add a new hash for the book with the student name and date
# being left as empty strings)

# Create a method that changes the rental details of a book by taking in
# the title of the book, the student renting it and the date it's due to
# be returned.
