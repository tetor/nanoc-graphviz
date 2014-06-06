# encoding: utf-8
#
# Graphviz filter test

require 'minitest_helper'

class Nanoc::Graphviz::FilterTest < MiniTest::Test
  # run method test
  def test_run
    filter = ::Nanoc::Graphviz::Filter.new

    assert filter.is_ready?, 'Running environment is not ready.'

    assert_equal '', filter.run('some texts')
  end
end
