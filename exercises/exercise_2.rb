require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"


@store1 = Store.find_by(id: 1)


puts @store1.inspect

@store1.name = "Saanich"
@store1.save

puts @store1.inspect

@store2 = Store.find_by(id: 2)

puts @store2.inspect

