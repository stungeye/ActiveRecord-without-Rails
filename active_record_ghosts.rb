load 'ar.rb'
load 'models\ghost.rb'

casper_the_friendly_ghost = Ghost.new

casper_the_friendly_ghost.name  = "Casper"
casper_the_friendly_ghost.phone = "204-644-4444"
casper_the_friendly_ghost.age   = 493

casper_the_friendly_ghost.save

puts casper_the_friendly_ghost.inspect