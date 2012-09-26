load 'ar.rb'
load 'models\customer.rb'
load 'models\province.rb'

new_customer = Customer.new

new_customer.name  = "Kyle Geske"
new_customer.email = "kgeske@rrc.ca"

# Commented out. Otherwise we'd add a new row everytime we
# ran this script.
# new_customer.save
# puts new_customer.inspect

wally = Customer.new( :name  => "Wally Glutton",
                      :email => "wglutton@mailinator.com")

# wally.save
# puts wally.inspect

# jane = Customer.create( :name  => "Jane Smith",
#                        :email => "jsmith@mailinator.com")
#puts jane.inspect

bobby = Customer.new( :name => "Bobby McGee",
                      :email => "bmcgee@mailinator.com")

if (bobby.save)
  puts "Bobby was saved to the database customers table."
  puts bobby.inspect
else
  puts "There was an error saving bobby to the database."
  bobby.errors.messages.each do |column, errors|
    errors.each do |error|
      puts "The #{column} property #{error}."
    end
  end
end
