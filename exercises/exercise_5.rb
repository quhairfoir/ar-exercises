require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "Total income of stores: #{Store.sum(:annual_revenue)}"
puts "Average income: #{Store.average(:annual_revenue).round}"
puts "There are #{Store.where(annual_revenue: (1000000..Float::INFINITY)).count} stores that make +$1mil a year"
