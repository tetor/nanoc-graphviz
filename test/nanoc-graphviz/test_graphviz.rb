require 'minitest_helper'

module Nanoc
  module Graphviz
    # Test runner checker Class
    class TestTest < MiniTest::Test
      def test_tests_are_running
        assert true
      end

      def test_that_it_has_a_version_number
        refute_nil ::Nanoc::Graphviz::VERSION
      end
    end
  end
end
