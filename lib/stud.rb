require 'json'

class Stud
  Filename = 'lib/books.json'.freeze
  StudFilename = 'lib/stud.json'.freeze

  def add_stud(s_id)
    stud = stud_read
    stud << { 's_id' => s_id }
    File.write(StudFilename, JSON.pretty_generate(stud))
  end

  def stud_read
    if File.exist?(StudFilename)
      JSON.parse(File.read(StudFilename))
    else
      []
    end
  end

  def books_read
    if File.exist?(Filename)
      JSON.parse(File.read(Filename))
    else
      []
    end
  end

  def loan_book(s_id, book)
    if stud_read.none? { |student| student['s_id'] == s_id }
      puts "Student with ID #{s_id} does not exist."
      return
    end
    booklist = books_read
    if booklist.none? { |b| b['title'] == book }
      puts "Book titled '#{book}' does not exist in the library."
      return
    end
    puts "#{s_id} has loaned the book: #{book}"
    File.write('lib/loans.json', JSON.pretty_generate({ 's_id' => s_id, 'book' => book }))
  end
end
