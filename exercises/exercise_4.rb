require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
end


bnb_store = Store.new(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
rchm_store = Store.new(name: 'Richmond', annual_revenue: 300000, mens_apparel: false, womens_apparel: true)
gast_store = Store.new(name: 'Gastown', annual_revenue: 300000, mens_apparel: true, womens_apparel: false)
srey_store = Store.new(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
wstl_store = Store.new(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
ytwn_store = Store.new(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)


bnb_store.save
rchm_store.save
gast_store.save
srey_store.save
wstl_store.save
ytwn_store.save

men_stores = Store.where('mens_apparel = true and womens_apparel = false')
puts ("Men's stores")
men_stores.each do |store|
  puts "Store name: #{store.name} - revenue: #{store.annual_revenue}"
end

women_stores = Store.where('womens_apparel = true and annual_revenue < 1000000 and mens_apparel = false')
puts ("Women's stores")
women_stores.each do |store|
  puts "Store name: #{store.name} - revenue: #{store.annual_revenue}"
end