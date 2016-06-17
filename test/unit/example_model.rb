
Bundler.require

database = Sequel.sqlite('database.sqlite3')

# database.run "CREATE TABLE example_model (id integer primary key autoincrement, name varchar(255))"

class ExampleModel < Sequel::Model
    plugin :force_index 
end