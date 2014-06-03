require 'minitest_helper'

class TestNanoc::Graphviz < MiniTest::Unit::TestCase
  def test_tests_is_running
    assert true
  end

  def test_that_it_has_a_version_number
    refute_nil ::Nanoc::Graphviz::VERSION
  end
end
