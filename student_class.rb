class Student

def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    return @cohort = new_cohort
  end

  def talk(string)
    return "#{string}#{@name}"
  end

  def fav_language(string)
     return "My favourite language is #{string}"
  end


end
