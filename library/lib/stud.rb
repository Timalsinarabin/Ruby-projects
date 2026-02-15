require 'json'
# Student class to manage students and their book loans
class Stud
  Filename = 'library/lib/books.json'.freeze
  StudFilename = 'library/lib/stud.json'.freeze
  Loanfile = 'library/lib/loans.json'.freeze

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

  def loan_stud
    if File.exist?(Loanfile) && !File.zero?(Loanfile)
      JSON.parse(File.read(Loanfile))
    else
      []
    end
  end

  def list_loan
    loans = loan_stud
    if loans.empty?
      puts 'There are no loans yet.'
    else
      loans.each_with_index do |loan, index|
        puts "#{index + 1}. Student ID: #{loan['s_id']}, Book: #{loan['book']}"
      end
    end
  end

  def loan_book(s_id,book)
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
    loans = loan_stud
    loans << { 's_id' => s_id, 'book' => book }
    File.write(Loanfile, JSON.pretty_generate(loans))
  end
end
