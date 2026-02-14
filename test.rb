require_relative 'lib/books'
puts "\tWelcome to the Book Library!"
library = Books.new
while true
  puts"-"*40;
  print "1. Add a book\n2. List all books\n3. Exit\nChoose an option: "
  choice = gets.chomp.to_i
  
  case choice
  when 1
    puts"-"*40;
    print "Title: "
    title = gets.chomp
    print "Author: "
    author = gets.chomp
    library.add_book(title, author)
  when 2
    puts"-"*40;
    puts"Listing all books:";
    library.list_books
  when 3
    puts "Exiting..."
    return
  else
    puts "Invalid option. Please try again."
  end
end
print "Title: "
title = gets.chomp
print "Author: "
author = gets.chomp
library.add_book(title, author)

library.list_books