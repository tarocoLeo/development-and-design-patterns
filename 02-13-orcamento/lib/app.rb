require_relative 'budget.rb'
require_relative 'tax.rb'

services_price_list = [
  { id: 1, name: 'service 1', price: 15},
  { id: 2, name: 'service 2', price: 13},
  { id: 3, name: 'service 3', price: 32},
  { id: 4, name: 'service 4', price: 25},
  { id: 5, name: 'service 5', price: 20}
]

requested_services = [
  {service_id: 1, quantity: 3},
  {service_id: 3, quantity: 1},
  {service_id: 4, quantity: 1},
  {service_id: 5, quantity: 2},
]

services_budget = Budget.budget(requested_services)
tax_value = Tax.calculate_icms(budget(requested_services))
total_budget = services_budget + tax_value

puts "Valor dos serviços:" + services_budget
puts "Valor da taxa:" + tax_value
puts "Orçamento total:" + total_budget