load 'ar.rb'

# The following code will not run until we run 'rake db:migrate'
# from the command line. This will run our two migration files
# in the db/migrate folder.

puts "There at #{Ghost.count} ghosts in the db."

casper_the_friendly_ghost = Ghost.new

casper_the_friendly_ghost.first_name = "Casper"
casper_the_friendly_ghost.last_name  = "McFadden"
casper_the_friendly_ghost.age        = 476

puts casper_the_friendly_ghost.inspect

puts "The name of the ghost is #{casper_the_friendly_ghost.full_name}."

casper_the_friendly_ghost.save

puts "There at #{Ghost.count} ghosts in the db."