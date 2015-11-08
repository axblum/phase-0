# Introduction to Inheritance

# I worked on this challenge [by myself, with: ].


# Pseudocode
=begin
make a class called Corhort which has the following properties
city,students,name,p0_start_date,immersive_start_date,graduation_date,email_list, num_of students,
city - Local_Corhort
students - both
p0-start-date Global-Cohort
immersive-start-date Global-Cohort
graduation-date global
email list string
num_of_students = both




=end
# Initial Solution

class Student
  attr_reader :first_name,:last_name,:city
  def initialize(first_name,last_name,city)
    @first_name = first_name
    @last_name = last_name
    @city = city
  end
end

class GlobalCohort
  require 'date'
  attr_reader :name,:p0_start_date,:email_list,:students,:num_of_students,:immersive_start_date,:phase1_end_date
  def initialize(name,p0_start_date,email_list,students)
    @name = name
    @p0_start_date = Date::parse(p0_start_date)
    @email_list = email_list
    @students = students
    @num_of_students = students.length
    @immersive_start_date = calculate_immersive_state_date
    @graduation_date = calculate_grad_date
    calculate_phase
  end
  def add_student(student)
    @students << student
  end
  def remove_student(student)
    @students.delete(student)
  end
  def graduated?
    @graduation_date < Date.today
  end
  def currently_in_phase
    today = Date.today
    puts @p0_start_date
      if today < @p0_start_date
        :nope
      elsif today >= @p0_start_date
        :phase0
      elsif  today >= @phase1_end
        :phase1
      elsif today >= @phase2_end
        :phase2
      elsif today >= @graduation_date
        :phase3
      else
        :nope
      end
  end
  private
  def calculate_immersive_state_date
    immersive_start_date = @p0_start_date  + 70
  end
  def calculate_grad_date
    grad_date = @immersive_start_date + 67
  end
  def calculate_phase
    @phase1_end = @immersive_start_date + 21
    @phase2_end = @phase1_end +21
  end
end

class LocalCohort < GlobalCohort
  def initialize(city_name,name,p0_start_date,email_list,global_students)
    super(name,p0_start_date,email_list,global_students)
    @city = city_name
    @global_students = global_students
    @students = students_by_city
  end
  private
  def students_by_city
    local_students = @global_students.select{|student| student.city == @city}
  end
end


# Refactored Solution

# DRIVER CODE FOR COOL PEOPLE

bob = Student.new("Bob","Dole","Chicago")
clarice = Student.new("Clarice","Starling","SF")

students =[bob,clarice]

devils = GlobalCohort.new("Tasmanian Devils","2015/11/09","tassy@dbc.com",students)
p devils.p0_start_date
p devils.immersive_start_date
# p devils.phase1_end_date
 p devils.currently_in_phase
# p devils.graduated?
# #p devils.students

 sf = LocalCohort.new("SF","Tasmanian Devils","2015/11/01","tassy@dbc.com",students)
# p sf.students
 p sf.p0_start_date
 p sf.immersive_start_date
 p sf.currently_in_phase
 p sf.graduated?

# Reflection
# What concepts did you review in this challenge?
# This exercise gave me a good refresher of inheritance.
# What is still confusing to you about Ruby?
# I would like to have a better understanding of modules
# What are you going to study to get more prepared for Phase 1?
# I think I am going to re visit the basics.