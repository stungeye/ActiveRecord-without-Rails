load 'ar.rb'
load 'models\customer.rb'
load 'models\province.rb'

number_of_customers = Customer.count
puts "There are #{number_of_customers} in my customers table."

all_customers = Customer.all

puts "Based on the array there are #{all_customers.size} customers."

puts "The first customer is #{all_customers[0].inspect}"

first_customer = Customer.first

puts "The name of my first customer is #{first_customer[:name]}."
puts "The first customer's city is #{first_customer.city}."

last_customer = Customer.last

puts last_customer.name

five_customers_with_a_names = Customer.where('name LIKE "a%"').
                                       order(:city).
                                       limit(5)
                                       
five_customers_with_a_names.each { |c| puts c.name }

winnipeg_customers = Customer.where(:city => 'Winnipeg')

puts "Number of Winnipeg customers is #{winnipeg_customers.size}"

customer_by_id = Customer.find(9000)

puts customer_by_id.inspect