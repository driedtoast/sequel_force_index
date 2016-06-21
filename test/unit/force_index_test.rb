
require_relative 'example_model'
require_relative "minitest_helpers"


class ForceIndexTest < Minitest::Test

    def test_mock
      @ds = Sequel.mock.dataset
      @ds.extension(:hash_aliases)
      @c = Class.new(Sequel::Model(@ds))
      @c.plugin(:force_index)
      
      assert_equal "SELECT * FROM a, b", @ds.from(:a, :b).sql
      assert_equal "SELECT * FROM a WHERE (a = 'bob')", @c.where(a: 'bob').sql
    end

    def test_example_model
        ExampleModel.where(id: 1).force_index('test').all


        ExampleModel.join("example_model", { id: 1 }, { table_alias: :alias2, index: 'blah' }).all
        
    end

end