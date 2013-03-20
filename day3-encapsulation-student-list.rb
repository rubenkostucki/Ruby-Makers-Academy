#speficifation of this project:

#Create a list so that we can have a reference of students on a particular cohort

#STUDENTLIST

#STUDENTS              [ATTRIBUTE]
#COHORT                [ATTRIBUTE]

#ADD (STUDENTS)        [INTERACTIONS]
#REMOVE (STUDENTS)     [INTERACTIONS]
#VIEW (STUDENTS)       [INTERACTIONS]

#STUDENTS = VARIABLE
#VIEW (STUDENTS) = METHOD(ARGUMENT)


class StudentList #this is the blue print of the class we haven't BUILT yet!

# students --> reason you don't put the attribute INSIDE the class is because you want a different attribute for each StudentList
# cohort

  def initialize(cohort) #the argument cohort is there because we want the user to input this argument to the method

    #to store cohort we set it as a local variable. It only exists inside that method, and dies at end
    #student_cohort = cohort

    @student_cohort = cohort #this is an instance variable and has a scope outside of the def initialize method
    @students = [] #an empty array by default
  end

  def add(student)
    # we need to do something here
    @students.push(student)
  end

  def remove(student)
    @students.delete(student)
  end

  def view_cohort_name #purpose is to return the cohort month
    @student_cohort #implicit RETURN of the instance variable
  end

  def view_students
    return @students
  end

end

march_list = StudentList.new("March Cohort") #this is the process of INSTANTIATION, of building the class for it to now be useful. Process of creating an instance of our student list. This is created in a memory but it's not pointing to anywhere which is why we need to add a variable

# puts march_list.view_cohort_name #calling the local method inside the instance variable of the class

# march_list.add("Dario")
# march_list.add("Zahid")
# march_list.add("Ben")
# march_list.remove("Dario")
# puts march_list.view_students


class Student

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def get_name
    [@first_name, @last_name]
  end

end

ruben = Student.new("Ruben", "Kos")
dario = Student.new("Dario", "DA")

# puts ruben.get_name

march_list.add(ruben)
march_list.add(dario)

march_list.view_students.each {|x| puts x.get_name}

march_list










# puts march_list.view_students

# SETTING COHORT ATTRIBUTE OF STUDENT LIST INSTANCE
# student_list.cohort = "March"

# GETTING COHORT ATTRIBUTE OF STUDENT LIST INSTANCE
# puts student_list.cohort


