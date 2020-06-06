# frozen_string_literal: true

movies = { terminator: 10 }
puts 'Select a function'
choice = gets.chomp.downcase

case choice
when 'add'
  puts 'Please choose a movie'
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 10.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "#{title} already exists with a rating of #{movies[title.to_sym]}"
  end
when 'update'
  puts 'Please choose a movie'
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts("#{title} does not exist")
  else
    puts('Whats the new rating?')
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated to #{movies[title.to_sym]}"
  end

when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts 'Please choose a movie'
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts("#{title} does not exist")
  else
    movies.delete(title)
    puts "#{title} has been deleted"
  end
else
  puts 'Error!'
end
