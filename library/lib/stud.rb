require 'sqlite3'

# Student class to manage students and their book loans
class Stud
  def initialize
    @books = []
    @db = SQLite3::Database.new "lib/book.db"
    @db.execute <<-SQL
      CREATE TABLE IF NOT EXISTS std_info(
      id INTEGER PRIMARY KEY,
      student_name VARCHAR(50)
      )
    SQL
    @db.execute <<-SQL
      CREATE TABLE IF NOT EXISTS loan_info(
      id INTEGER PRIMARY KEY,
      book_name VARCHAR(50),
      s_id INTEGER,
      FOREIGN KEY (s_id) REFERENCES std_info(id)
    )
    SQL
  end
  def add_stud(s_id,std_name)
    @db.execute "insert into std_info (id,student_name) values(?,?)",[s_id,std_name]
  end

  def list_loan
    puts "Student_id | Book Name"
    @db.execute "select s_id, book_name from loan_info" do |row|  
      puts "#{row[0]}\t   | #{row[1]}"
    end
  end

  def loan_book(s_id, book)
    @db.execute "select book_name from bookinfo" do |row|
      @books.push(row[0])
    end
    if @books.include?(book)
      @db.execute "insert into loan_info (s_id,book_name) values(?,?)",[s_id,book]
    else
      puts"Book not found"
    end
  end
end

