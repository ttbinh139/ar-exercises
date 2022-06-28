require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
end

store3 = Store.third

store3.delete

puts "Total stores: #{Store.all.length}"
