load 'ar.rb'
load 'models\customer.rb'
load 'models\province.rb'

customer_by_id = Customer.find(9000)

puts customer_by_id.inspect

customer_by_id.city = ""

puts customer_by_id.inspect

if (customer_by_id.save)
  puts "The customer was updated."
else
  puts "There was a validation error when saving the customer."
end

five_customers_with_a_names = Customer.where('name LIKE "a%"').
                                       order(:city).
                                       limit(5)
                                       
five_customers_with_a_names.each do |c|
  c.city = "Winnipeg"
  c.save
end
