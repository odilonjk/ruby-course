def alphabetize(arr, rev=false)
    if rev == true
        arr.sort { |a,b| b <=> a }
    else
        arr.sort { |a,b| a <=> b }
    end
end

letters = ["B", "C", "Z", "T", "E", "U", "R", "H", "O"]

puts "Your letters A to Z: #{alphabetize(letters)}"
puts "Your letters Z to A: #{alphabetize(letters, true)}"
