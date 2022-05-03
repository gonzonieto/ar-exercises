class Employee < ActiveRecord::Base
  belongs_to :store

  @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
  @store1.employees.create(first_name: "Gonzo", last_name: "Nieto", hourly_rate: 150)
  @store1.employees.create(first_name: "Jeff", last_name: "Bezos", hourly_rate: 13)
  @store1.employees.create(first_name: "Archie", last_name: "Fuller", hourly_rate: 14)
end
