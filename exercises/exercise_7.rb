require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
end

puts "What's your favorite store name:"
store_name = gets.chop

new_store = Store.new(name: store_name)
new_store.save

puts(new_store.valid?)
puts(new_store.errors[:name])
puts(new_store.errors[:annual_revenue])
puts(new_store.errors[:employee])