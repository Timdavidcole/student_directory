@months = [:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december]

def input_students
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
    elsif @months.include?(cohort)
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
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
