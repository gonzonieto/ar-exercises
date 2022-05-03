class Employee < ActiveRecord::Base
  belongs_to :store

  @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
  @store1.employees.create(first_name: "Gonzo", last_name: "Nieto", hourly_rate: 150)
  @store1.employees.create(first_name: "Jeff", last_name: "Bezos", hourly_rate: 13)
  @store1.employees.create(first_name: "Archie", last_name: "Fuller", hourly_rate: 14)
  
  @store2.employees.create(first_name: "Margaret", last_name: "Winnebago", hourly_rate: 25)
  @store2.employees.create(first_name: "Chris", last_name: "Healey", hourly_rate: 666)
  @store2.employees.create(first_name: "Renée", last_name: "Descartes", hourly_rate: 1)
  @store2.employees.create(first_name: "Ecpitometus", last_name: "the Lower", hourly_rate: 33)
end