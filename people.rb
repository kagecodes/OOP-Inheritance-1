class Person

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def greeting
    "Hi my name is #{name}"
  end

end


class Instructor < Person

  def teach
    "Everything in Ruby is an Object"
  end

  # def initialize(name)
  #   super (name)
  # end

end


class Student < Person

  def learn
    "I get it!"
  end

end


nadia = Instructor.new('Nadia')
puts nadia.greeting

chris = Student.new('Chris')
puts chris.greeting

puts nadia.teach
puts chris.learn

puts chris.teach
# the method teach does not work on instances in the student class because it is not inherited through the instructor class. The Student class is only inheriting methods from the parent Person class due to the parent child relationship as indicated by the '<' sign.
