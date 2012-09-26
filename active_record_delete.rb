load 'ar.rb'

# DELETING ROWS WITH ACTIVE RECORD

# Let's find a customer in our customers table.
#
# You will need to run the active_record_create.rb script
# first, otherwise this customer will not exist.

kyle = Customer.where(:name => 'Kyle Geske').first

# In the above statement we have to call .first to get a single
# customer object. Without the .first we will get a collection
# of objects. In this case it will likely be a collection of
# size 1.

puts kyle.inspect

# Deleting the customer is as simple as calling .destroy

kyle.destroy  unless kyle.nil?

puts kyle.inspect

# DANGER! The following commented command would delete *all* customers
# from the customers table.

# Customer.destroy_all