require 'sequel'


module SQL 
  class ForceIndexExpression < Sequel::SQL::Expression
    
    attr_accessor :table_name, :index_name

    def initialize(table_name, index_name)
        @table_name = table_name
        @index_name = index_name
    end
    
    def to_s(*args)
        puts args
        puts "is this callled #{table_name}"
        table_name
    end

    def to_s_append(ds, s)
        "hello"
    end


    def each
        puts "what is this?"
        puts OverrideLiteralString.new(table_name.to_s)
        OverrideLiteralString.new(table_name.to_s)
    end    
  end

  class OverrideLiteralString < Sequel::LiteralString
    def initialize(str)
      super 
    end

    def to_s
      puts "to string #{super}"
      super
    end
  end
end

