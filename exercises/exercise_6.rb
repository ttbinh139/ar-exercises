require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Binh", last_name: "Trinh", hourly_rate: 40)
@store1.employees.create(first_name: "Ha", last_name: "Tran", hourly_rate: 50)

@store2.employees.create(first_name: "Long", last_name: "Trinh", hourly_rate: 50)
@store2.employees.create(first_name: "Nguyen", last_name: "Tran", hourly_rate: 55)
@store2.employees.create(first_name: "Tuan", last_name: "Nguyen", hourly_rate: 45)
