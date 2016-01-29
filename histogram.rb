puts "Enter a text please."
text=gets.chomp
text.downcase!

words=text.split(" ")
frequencies=Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by do |word,count|
    count
end
frequencies.reverse!
frequencies.each { |word,count| puts word + " " + count.to_s } 
