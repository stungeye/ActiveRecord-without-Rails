load 'ar.rb'

# READING DB ROWS WITH ACTIVE RECORD

# We can call .count on the Customer class to count all the rows.
# This will generate the following SQL:
# SELECT COUNT(*) FROM customers;

number_of_customers = Customer.count
puts "There are #{number_of_customers} in my customers table."

# To load-up all rows from our customers table we call .all.

all_customers = Customer.all

# The all_customers object acts like an array.

puts "Based on customers collection there are #{all_customers.size} customers."
puts "The first customer is #{all_customers[0].inspect}"

# Who is the first customer by primary key?
# Unlike .all which returns a collection of Customer objects,
# .first returns a single Customer object.

first_customer = Customer.first

# We can access this customer's columns/properties in two ways:

puts "The name of my first customer is #{first_customer[:name]}."
puts "The first customer's city is #{first_customer.city}."

# Who is the last customer by primary key?

last_customer = Customer.last
puts last_customer.name

# We can simulate SQL WHERE clauses with the .where method.
# Exact matches can be found as follows:

winnipeg_customers = Customer.where(city: 'Winnipeg')

# The where method can also take a string argument.

customers_with_a_names = Customer.where('name LIKE "a%"')

# We can also chain other SQL clauses onto our searches.
# Here we're ordering our results by city and limiting to 5 rows.

five_customers_with_a_names = Customer.where('name LIKE "a%"').order(:city).limit(5)
five_customers_with_a_names.each { |c| puts c.name }

puts "Number of Winnipeg customers is #{winnipeg_customers.size}"

# If we know the primary key we can search for it directly with find.

customer_by_id = Customer.find(9000)

puts customer_by_id.inspect

# If you want to find the first instance of a record that matches a where clause,
# use find_by. Similar to where, but returns a single object instead of a collection.

customer = Customer.find_by('name LIKE "a%"')
puts customer.name

customer = Customer.find_by(city: 'Winnipeg')
puts customer.inspect
