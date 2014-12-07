

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "------------"
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
	puts "Please enter the cohort of the student"
	cohort = gets.chomp
	while !name.empty? do
	#add the student hash to the aray
	students << {:name => name, :cohort => cohort}
	puts "Now we have #{students.length} students"
    #get another name from the user
    name = gets.chomp
end
#return the array of students
students
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

students = input_students
print_header
print(students)
print_footer(students)

