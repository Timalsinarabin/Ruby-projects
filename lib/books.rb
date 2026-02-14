class Books
  def initialize
    @books = []
  end
  
  def add_book(title, author)
    @books << { title: title, author: author }
  end
  
  def list_books
    @books.each do |book|
      puts "Title: #{book[:title]}, Author: #{book[:author]}"
    end
  end
end
