# encoding: utf-8
#
# Graphviz filter test

require 'minitest_helper'

class Nanoc::Graphviz::FilterTest < MiniTest::Test
  def setup
    @filter = ::Nanoc::Graphviz::Filter.new
  end

  def test_is_ready
    if system 'which dot >/dev/null 2>&1'
      assert @filter.is_ready?, 'Running environment is not ready.'
    else
      assert !@filter.is_ready?, 'Running environment check is failed.'
    end
  end

  # run method test
  def test_run
    assert_equal '', @filter.run('some texts')
  end
end
