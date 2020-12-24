load 'ar.rb'

# CREATING WITH ACTIVE RECORD

# There are three ways to create and persist a new Customer.
# Warning: If you run this script multiple times you will
# end up with duplicate entries in your customers table.

# Method One: Create a Customer in "object space".

new_customer = Customer.new

# Set the required properties.

new_customer.name  = "Kyle Geske"
new_customer.email = "kgeske@rrc.ca"
new_customer.city  = "Winnipeg"

# Calling save on the object will persist it to the customers table.

new_customer.save

# We can call inspect on any object to inspect its internals.

puts new_customer.inspect


# Method Two: Create an Customer in "object space"

# This time we set the required properties as key/value arguments of the new method.

wally = Customer.new( name:  "Wally Glutton",
                      email: "wglutton@mailinator.com",
                      city:  "Winnipeg" )

# Like the previous example we need to call save to persist the object
# to the customers table.

wally.save

# Method Three: Create the object and persist it all at once.

jane = Customer.create( name:  "Jane Smith",
                        email: "jsmith@mailinator.com",
                        city:  "Winnipeg" )

# Let's test the validations we added to the models/customer.rb file:
# validates_presence_of :name, :email, :city

bobby = Customer.new( name: "Bobby McGee" ) # Purposefully missing the city and email.

# Save will return false if any of our validations fail.
if (bobby.save)
  puts "Bobby was saved to the database customers table."
  puts bobby.inspect
else
  puts "There was an error saving bobby to the database."
  
  # We can loop through all the validation errors.
  bobby.errors.messages.each do |column, errors|
    errors.each do |error|
      puts "The #{column} property #{error}."
    end
  end
end
