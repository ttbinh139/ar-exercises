require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
end

puts "Total revenue: #{Store.sum(:annual_revenue)}"
puts "Average revenue: #{Store.average(:annual_revenue)}"

good_stores = Store.where('annual_revenue > ?', 1000000)
puts "Number of stores that are generating $1M or more: #{good_stores.length}"
