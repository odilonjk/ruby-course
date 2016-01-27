print "What's your first name?"
name = gets.chomp
name.capitalize!
print "What's your last name?"
lastname = gets.chomp
lastname.capitalize!
print "What's your city?"
city = gets.chomp
city.capitalize!
print "What's your state? (Ex.: TX)"
state = gets.chomp
state.upcase!
puts "Your name is #{name} #{lastname}."
puts "You leave at #{city}, #{state}"
