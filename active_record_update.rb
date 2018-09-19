load 'ar.rb'

# UPDATING ROWS WITH ACTIVE RECORD

# Find a customer by primary key.

customer_by_id = Customer.find(9000)

puts customer_by_id.inspect

# Change the customer's city in object space.

customer_by_id.city = ""

puts customer_by_id.inspect

# The associated row in the customers table will not change until
# we save the object.

if (customer_by_id.save)
  puts "The customer was updated."
else
  puts "There was a validation error when saving the customer."
end

# Let's find 5 specific customers...

five_customers_with_a_names = Customer.where('name LIKE "a%"').order(:city).limit(5)

# ...and change all their city column/properties to Winnipeg.

five_customers_with_a_names.each do |c|
  c.city = "Winnipeg"
  c.save
end

# The above will fire off one SQL UPDATE for each record. You can update all in
# one SQL statement using the more efficient update_all:

winnipeggers = Customer.where(city: 'Winnipeg')

# Moving all customers to Winterpeg:

winnipeggers.update_all(city: 'Winterpeg')