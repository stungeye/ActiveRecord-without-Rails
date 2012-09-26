load 'ar.rb'
load 'models\customer.rb'
load 'models\province.rb'

kyle = Customer.where(:name => 'Kyle Geske').first

puts kyle.inspect

kyle.destroy  unless kyle.nil?

puts kyle.inspect

# DANGER! This command would delete *all* customers from
# the customers table.
# Customer.destroy_all