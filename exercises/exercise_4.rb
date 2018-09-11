require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store4 = Store.create(name: "Oak Bay", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store5 = Store.create(name: "Fairfield", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store6 = Store.create(name: "Gordon Head", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "#{store.name}: $#{store.annual_revenue} per year."
end

@failing_womens_apparel = Store.where(womens_apparel: true, annual_revenue: (0..500000))
@failing_womens_apparel.each do |store|
  puts "#{store.name}: $#{store.annual_revenue} per year."
end