def input_students
  months = [:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december]
  puts "Please enter the name of the student"
  puts "To finish, just leave blank and press enter:"
  students = []
  name = gets.chomp
  while !name.empty? do
    puts "Please enter cohort:"
    cohort = gets.chomp.downcase.to_sym
    if cohort.empty?
      cohort = :TBA
      students << {name: name, cohort: cohort}
      puts "now we have #{students.count} students"
      puts "Please enter the name of the student"
      puts "To finish, just leave blank and press enter:"
      name = gets.chomp
    elsif months.include?(cohort)
      students << {name: name, cohort: cohort}
      puts "now we have #{students.count} students"
      puts "Please enter the name of the student"
      puts "To finish, just leave blank and press enter:"
      name = gets.chomp
    else
      puts "Cohort spelt incorrectly."
    end
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students_by_group = {}
  students.each do |student|
    student.each do |key, value|
      if students_by_group.key?(value)
        students_by_group[value] = students_by_group[value] << student[:name]
      elsif key == :cohort
        students_by_group[value] = [student[:name]]
      end
    end
  end
  students_by_group.each do |cohort, group|
    puts "#{cohort.capitalize}: #{group.join(', ')}"
  end
end



def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
