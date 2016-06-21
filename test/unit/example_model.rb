
Bundler.require

database = Sequel.sqlite('database.sqlite3')

class ExampleModel < Sequel::Model
    plugin :force_index 
end

EXAMPLE_MODELS_TABLE = ExampleModel.implicit_table_name

database.run "DROP TABLE IF EXISTS #{EXAMPLE_MODELS_TABLE}"
database.run "CREATE TABLE #{EXAMPLE_MODELS_TABLE} (id integer primary key autoincrement, name varchar(255))"

