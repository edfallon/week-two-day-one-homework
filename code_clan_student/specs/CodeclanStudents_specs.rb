require('minitest/autorun')
require_relative('../CodeClanStudent.rb')

class TestCodeClanStudent < MiniTest::Test

  def setup()
      @student = Student.new("Tom", 5)

  end


  def test_student_name()
    assert_equal("Tom", @student.name)
  end

  def test_student_number()
    assert_equal(5, @student.number)
  end

  def test_set_student_name()
    @student.set_student_name("Jane")
    assert_equal("Jane", @student.name)
  end

  def test_set_student_cohort()
    @student.set_student_cohort(6)
    assert_equal(6, @student.number)
  end

  def test_student_talk()
    assert_equal("I can talk!", @student.student_talk)
  end

  def test_favorite_language()
    assert_equal("I love Ruby", @student.language(" Ruby"))

  end

end
