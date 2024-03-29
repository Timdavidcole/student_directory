
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  if name.empty?
    puts "No names entered."
  else
    while !name.empty? do
      students << {name: name, cohort: :november}
      puts "now we have #{students.count} students"
      name = gets.chomp
    end
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort].capitalize} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
if !students.empty?
  print_header
  print(students)
  print_footer(students)
end
