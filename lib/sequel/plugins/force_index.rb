module Sequel
  module Plugins
    module ForceIndex
      module DatasetMethods
        def select_sql(opts = nil)
            puts "is it working "
            result = super
            puts result
        end
        def force_index(ds, index)
            # ADD  USE INDEX ( ' .... ')
        end
      end
    end
  end
end