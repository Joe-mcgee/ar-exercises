require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Bob", last_name: "Mcgee", hourly_rate: 55)
@store1.employees.create(first_name: "Sid", last_name: "Mcgee", hourly_rate: 55)
@store2.employees.create(first_name: "Joe", last_name: "Lundquist", hourly_rate: 60)
@store2.employees.create(first_name: "Fred", last_name: "Detters", hourly_rate: 55)
@store2.employees.create(first_name: "Thomas", last_name: "Baker", hourly_rate: 55)
@store2.employees.each do |employee|
  puts employee
end
