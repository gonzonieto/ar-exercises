require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

print "Enter the new store's name:\n > "
new_store_name = gets.chomp

new_store = Store.create(name: new_store_name)

puts "\n.errors.messages :"
pp new_store.errors.messages

puts "\n.errors.full_messages :"
pp new_store.errors.full_messages

puts "\n.errors.details :"
pp new_store.errors.details

puts "\nChecking for errors related to the :name attribute .."
pp new_store.errors.where(:name)

new_store.attribute_names.each do |attr|
  puts "\nErrors for the #{attr} attribute .."
  pp new_store.errors.where(attr)
end


# 2. Ask the user for a store name (store it in a variable)
# 3. Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
# 4. Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record