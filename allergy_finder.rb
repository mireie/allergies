#! ./lib/bin/env ruby
require ('./lib/allergies.rb')

puts "Enter your Allergy Score™ and we'll return a list of your allergies."
allergy_score = Allergies.new(gets.chomp.to_i)
puts allergy_score.find_allergies