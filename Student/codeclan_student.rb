class Student


  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def student_name
    return @name
  end

  def student_cohort
    return @cohort
  end

  def set_student_name(new_name)
    @name = new_name
  end

  def set_student_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_can_talk(speech)
    return speech
  end


  def student_favourite_programming_language(language)
    return "I love #{language}"
  end

end
