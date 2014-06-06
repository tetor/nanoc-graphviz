require 'minitest_helper'

class Nanoc::Graphviz::TestTest < MiniTest::Test
  def test_tests_are_running
    assert true
  end

  def test_that_it_has_a_version_number
    refute_nil ::Nanoc::Graphviz::VERSION
  end
end
