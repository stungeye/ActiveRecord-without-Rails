load 'ar.rb'

iris = Customer.find(9000)

iris_prov = iris.province

puts "My customer #{iris.name} lives in the province of #{iris_prov.name}."

puts iris.province.name

quebec = Province.find(11)

puts "In the province of Quebec we have #{quebec.customers.size} customers."

quebec.customers.each { |c| puts c.name }

new_customer = Customer.new( :name => 'New Customer',
                             :city => 'Quebec',
                             :email => 'customer@email.com')

new_customer.province = quebec

new_customer.save

puts new_customer.inspect

new_one = quebec.customers.build( :name => 'My New Customer',
                                  :email => 'me@here.com',
                                  :city => 'Quebec')

new_one.save

puts new_one.inspect