require 'sqlite3'

db = SQLite3::Database.new 'test.db'

db.execute <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(30)
  );
SQL

db.execute 'insert into users (name) values(?)', ['mrA']
db.execute 'select id, name from users' do |row|
  puts "#{row[0]}: #{row[1]}"
end
db.close
