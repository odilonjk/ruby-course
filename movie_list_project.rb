movies = {
    A_Menina_Que_Roubava_Livros: 3.5,
    Jogos_Vorazes: 4,
    Harry_Potter: 4.5
}
puts "What do you want to do?"
puts "add = Add a movie."
puts "update = Update a movie."
puts "display = Display a movie."
puts "delete = Delete a movie."
choice = gets.chomp.downcase

case choice
when "add"
    puts "What's the movie name?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "What's the rating for #{title}?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "It's been added."
    else
        puts "This movie already exists."
    end
when "update"
    puts "What is the movie name?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Sorry, i don't have this movie at list."
    else
        puts "What's the new rate for the movie?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "Movie updated!"
    end
when "display"
    movies.each do |movie,rating|
        puts "#{movie}: #{rating}"
    end
when "delete"
    puts "What movie you want to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Sorry, this movie isn't at list."
    else
        movies.delete(title.to_sym)
        puts "Movie deleted."
    end
else
    puts "Error!"
end
