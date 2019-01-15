require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class TestStudnet < MiniTest::Test

  def test_student_name
    student = Student.new("John", "G11")
    assert_equal("John", student.student_name)
  end


  def test_student_cohort
    student = Student.new("Teresa", "G03")
    assert_equal("G03", student.student_cohort)
  end


  def test_set_student_name
    student = Student.new("Ian", "G19")
    student.set_student_name("Kyle")
    assert_equal("Kyle", student.student_name)
  end

  def test_set_student_cohort
    student = Student.new("Brian", "G06")
    student.set_student_cohort("G03")
    assert_equal("G03", student.student_cohort)
  end

  def test_student_can_talk
    student = Student.new("Sam", "G10")
    result = student.student_can_talk("I can talk!")
    assert_equal("I can talk!", result)
  end

# or

# def test_student_can_talk
#   student = Student.new("Sam", "G10")
#   result = student.student_can_talk()
#   assert_equal("I can talk!", result)
# end




  def test_student_favourite_programming_language
    student = Student.new("Ian", "G19")
    language = "Ruby"
    result = student.student_favourite_programming_language("#{language}")
    assert_equal("I love #{language}", result)
  end


end
