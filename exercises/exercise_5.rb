require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"


@sum = Store.sum('annual_revenue')

puts @sum

@number = Store.count

puts @sum/@number


@rich = Store.where('annual_revenue > 1000000')

@rich.each do |store|
  puts "#{store.name}"
end
