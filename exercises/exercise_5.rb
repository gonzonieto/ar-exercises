require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# 1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
total_revenue = Store.sum('annual_revenue')
puts "Total revenue: #{total_revenue}"

# 2. On the next line, also output the average annual revenue for all stores.
store_count = Store.count
puts "Store count: #{store_count}"
puts "Average revenue per store: #{total_revenue / store_count}"

# 3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.
stores_over_1M_revenue = Store.where('annual_revenue >= 1000000')
puts "Number of stores generating $1M or more in annual sales: #{stores_over_1M_revenue.size}"