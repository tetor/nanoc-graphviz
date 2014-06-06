# encoding: utf-8
#
# Graphviz filter test

require 'minitest_helper'

class Nanoc::Graphviz::FilterTest < MiniTest::Test
  # run method test
  def test_run
    filter = ::Nanoc::Graphviz::Filter.new
    assert_equal '', filter.run('some texts')
  end
end
