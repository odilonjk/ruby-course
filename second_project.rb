print "Enter integer please: "
intnum = Integer.chomp

if intnum > 0
    puts "You picked a positive number."
elsif intnum < 0
    puts "You picked a negative number."
else
    puts "You picked zero."
end
