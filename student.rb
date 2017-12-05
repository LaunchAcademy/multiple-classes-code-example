class Name
  attr_reader :first_name
  attr_reader :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    @full_name = "#{@first_name} #{@last_name}"
  end

  def greeting
    "Hi #{@full_name}"
  end
end

class Student
  attr_reader :name
  def initialize(first_name, last_name)
    @name = Name.new(first_name, last_name)
  end

  def first_name
    name.first_name
  end
end

class OldStudent
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

stud = Student.new('Jon', 'Snow')
old_stud = OldStudent.new('Jon', 'Snow')
require 'pry'
binding.pry
puts "Hi #{stud.first_name} #{stud.last_name}"
