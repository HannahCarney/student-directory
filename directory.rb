#let's put all students into an array
students = [
	{:name => "Dr. Hannibal Lecter", :cohort => :november},
	{:name => "Darth Vader", :cohort => :november},
	{:name => "Nurse Ratched", :cohort => :november},
	{:name => "Michael Corleone", :cohort => :november},
	{:name => "Alex De Large", :cohort => :november},
	{:name => "The Alien", :cohort => :november},
	{:name => "Terminator", :cohort => :november},
	{:name => "Freddy Kruger", :cohort => :november},
	{:name => "The Joker", :cohort => :november}
]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "------------"
end


def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end
#nothing happens until we call the methods


def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	#create an empty array
	students =[]
	#gets first name
	name = gets.chomp
	#while the name is not empty, repeat this code
	while !name.empty? do
	#add the student hash to the aray
	students << {:name => name, :cohort => :november}
	puts "Now we have #{students.length} students"
    #get another name from the user
    name = gets.chomp
end
#return the array of students
students
end

students = input_students
print_header
print(students)
print_footer(students)
