require 'sqlite3'

# Books class to manage the library's book collection
class Books
  def initialize
    @db = SQLite3::Database.new "lib/book.db"
    @db.execute <<-SQL
      CREATE TABLE IF NOT EXISTS bookinfo(
      id INTEGER PRIMARY KEY,
      book_name VARCHAR(50),
      author VARCHAR(50)
    )
    SQL
    
  end
  def add_book(title, author)
    @db.execute "insert into bookinfo (book_name,author) values(?,?)",[title,author]
  end

  def list_books
    @db.execute "select id, book_name, author from bookinfo" do |row|
      puts "#{row[0]}. Book Title: #{row[1]}\n   Author: #{row[2]}"
    end
  end
end
