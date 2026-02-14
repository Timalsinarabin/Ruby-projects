require 'json'

class Books
  Filename = 'lib/books.json'.freeze
  def add_book(title, author)
    books = books_read
    books << { 'title' => title, 'author' => author }
    File.write(Filename, JSON.pretty_generate(books))
  end

  def books_read
    if File.exist?(Filename)
      JSON.parse(File.read(Filename))
    else
      []
    end
  end

  def list_books
    books = books_read
    if books.empty?
      puts 'There are no books in the library.'
    else
      books.each do |book|
        puts "Title: #{book['title']}, Author: #{book['author']}"
      end
    end
  end
end
