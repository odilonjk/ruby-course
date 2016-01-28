print "Hi! Please enter a code with 4 digits: "
input = Integer(gets.chomp)
digits = input.to_s.length

if digits > 4
    puts "You've entered a code with more than 4 digits. Operation cancealed."
elsif digits < 4
    puts "You've entered a code with less than 4 digits. Operation cancealed."
else
    puts "Done."
end
