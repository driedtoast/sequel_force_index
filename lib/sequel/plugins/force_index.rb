require 'sql/force_index_expression'

module Sequel
  module Plugins
    module ForceIndex
      module DatasetMethods
        def select_sql()
            puts @opts.inspect
            puts "is it working #{@opts[:from]}"
            result = super
            puts result
            #raise Exception.new('ad')
            result
        end

        def join_table(type, table, expr=nil, opts=OPTS, &block)
            puts "joins .... "
            puts table 
            puts opts.inspect
            puts "---"
            super type, table, expr, opts, &block
        end

        def force_index(index)
            # ADD  USE INDEX ( ' .... ')
            puts "force --- "
            puts @opts[:from].last
            idx = @opts[:from].length - 1
            @opts[:from][idx] = ::SQL::ForceIndexExpression.new(@opts[:from].last, index).to_s
            self
        end
      end
    end
  end
end