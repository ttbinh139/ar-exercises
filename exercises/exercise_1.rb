require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base
end

# Print information about the database table
# Store.columns.each { |column|
#   puts column.name
#   puts column.type
# }

bnb_store = Store.new(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
rchm_store = Store.new(name: 'Richmond', annual_revenue: 300000, mens_apparel: false, womens_apparel: true)
gast_store = Store.new(name: 'Gastown', annual_revenue: 300000, mens_apparel: true, womens_apparel: false)


bnb_store.save
rchm_store.save
gast_store.save

puts "Total stores: #{Store.all.length}"

