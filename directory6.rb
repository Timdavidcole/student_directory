
def input_students
  puts "Please enter the names of the students".center(50)
  puts "To finish, just hit return twice".center(50)
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "now we have #{students.count} students".center(50)
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort].capitalize} cohort)".center(50)
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(50)
end

students = input_students
print_header
print(students)
print_footer(students)
