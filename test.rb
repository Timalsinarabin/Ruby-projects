require_relative 'lib/books'
require_relative 'lib/stud'

puts "\tWelcome to the Book Library!"
library = Books.new
stud = Stud.new

while true
  puts '-' * 40
  print "1. Add a book\n2. List all books\n3. Exit\n4. Add a student\n5. Loan a book\nChoose an option: "
  choice = gets.chomp.to_i

  case choice
  when 1
    puts '-' * 40
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    library.add_book(title, author)
  when 2
    puts '-' * 40
    puts 'Listing all books:'
    library.list_books
  when 3
    puts 'Exiting...'
    break
  when 4
    puts '-' * 40
    print 'Student ID: '
    s_id = gets.chomp
    stud.add_stud(s_id)
    puts "Student with ID #{s_id} added."
  when 5
    puts '-' * 40
    print 'Student ID: '
    s_id = gets.chomp
    print 'Book Title: '
    book = gets.chomp
    stud.loan_book(s_id, book)
  else
    puts 'Invalid option. Please try again.'
  end
end
print 'Title: '
title = gets.chomp
print 'Author: '
author = gets.chomp
library.add_book(title, author)

library.list_books
