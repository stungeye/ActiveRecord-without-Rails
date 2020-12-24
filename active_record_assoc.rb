load 'ar.rb'

# WORKING WITH ACTIVE RECORD ASSOCIATIONS

# Find a customer we know exists by primary key.

iris = Customer.find(9000)

# We can find this customers province. Internally, Active Record
# will look at the customer's province_id foreign key and
# serach the provinces table for us!

iris_prov = iris.province

puts "My customer #{iris.name} lives in the province of #{iris_prov.name}."

puts iris.province.name

# We can work from the other side of the association too.
# Let's start with a province:

quebec = Province.where(:name => 'Quebec').first

puts "In the province of Quebec we have #{quebec.customers.size} customers."

quebec.customers.each { |c| puts c.name }

# Associating a new customer with an existing province can be done in two ways.

# Method One. Create the customer without a province.

new_customer = Customer.new( name:  'New Customer',
                             city:  'Quebec',
                             email: 'customer@email.com')

# Assign an existing Province object to the customer.
# This will automatically set the customer's province_id
# foreign key.

new_customer.province = quebec

new_customer.save

puts new_customer.inspect

# We can also use an existing Province object to build a new customer:

new_one = quebec.customers.build( name:  'My New Customer',
                                  email: 'me@here.com',
                                  city:  'Quebec')

new_one.save

puts new_one.inspect
