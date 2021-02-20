# code here!
class School
    attr_accessor :roster
    
    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(student_name, student_grade)
        roster[student_grade] ||= [] #what?
        roster[student_grade] << student_name #take argument of student and shovel it into the student_grade array
    end

    def grade(student_grade)    #takes argument of student grade
        roster[student_grade]   #returns the values in the roster for the given student_grade key
    end

    # def sort
    #     sorted_students = {}  #make new hash for the sorting results
    #     roster.each do |new_grade, new_students|  #iterate on the student_grade key and new_student values
    #         sorted_students[new_grade] = new_students.sort #sort the students alphabetically into the new_grade key of the sorted_students hash
    #     end
    #     sorted_students #return the new hash
    # end
    def sort
        Hash[roster.sort.map {|grade, student| [grade,student.sort]}]
        #create and return a new hash made by collecting the grade-student pair in roster after they have been sorted       
    end

end