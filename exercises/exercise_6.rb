require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

# require 'faker'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, hourly_rate: rand(10..60))
@store1.employees.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, hourly_rate: rand(10..60))
@store1.employees.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, hourly_rate: rand(10..60))
@store1.employees.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, hourly_rate: rand(10..60))
@store2.employees.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, hourly_rate: rand(10..60))
@store2.employees.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, hourly_rate: rand(10..60))

@store1.employees.each do |employee|
  puts "#{employee.first_name} #{employee.last_name}, wage: $#{employee.hourly_rate}/hr"
end

@store2.employees.each do |employee|
  puts "#{employee.first_name} #{employee.last_name}, wage: $#{employee.hourly_rate}/hr"
end