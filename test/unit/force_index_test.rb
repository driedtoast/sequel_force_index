
require_relative 'example_model'
require_relative "minitest_helpers"


class ForceIndexTest < Minitest::Test

    def test_example_model
        ExampleModel.select_all
    end

end