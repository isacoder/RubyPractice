movies = {
 Sayonara: 4,
 Oblivion: 3,
 Memento: 2
}

loop do
puts "--- What do you want to do with your movies? [add/update/display/delete/exit] ---"
choice=gets.chomp

puts "You selected: " + choice 

choice.downcase!

case choice
when "add"
    puts "What is the title of the movie?"
    title=gets.chomp
    if movies[title.to_sym].nil?    
        puts "What is the rating?"
        rating=gets.chomp
        movies[title.to_sym]=rating.to_i
        puts "We have added:  #{title}  with a raiting: #{rating}"
    else
        puts "you already have this movie in your list"
end

when "update"
    puts "Which is the title you want to update?"
    title= gets.chomp
    if movies[title.to_sym].nil?
        puts "We don't have that movie listed"
    else
        puts "Which is the new rating?"
        rating=gets.chomp
        movies[title.to_sym]=rating.to_i;
        puts "#{title} has been updated to #{rating}"
    end
    
when "display"
    movies.each  {|title,rating| puts "#{title}: #{rating}" }
    
when "delete" 
    puts "Which title do you like to delete from your existence?"
    title=gets.chomp
    if movies[title.to_sym].nil?
        puts "This is very strange, I don't have it listed"
    else
        movies.delete(title.to_sym)
        title.gsub!(/[aeiou]/, '*')
        puts "Did you mean #{title} .. mmm I think I have forgoten already"
    end
when "exit"
    puts "Thanks for using our services, we hope to see you again soon"
    break    
else
    puts "Error! i'm sorry mister, that is something we can't do"
end

end
