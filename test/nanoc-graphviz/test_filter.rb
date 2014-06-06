# encoding: utf-8
#
# Graphviz filter test

require 'minitest_helper'

class Nanoc::Graphviz::FilterTest < MiniTest::Test
  def setup
    @filter = ::Nanoc::Graphviz::Filter.new
  end

  def test_ready
    if system('which dot >/dev/null 2>&1')
      assert @filter.ready?, 'Running environment is not ready.'
    else
      assert !@filter.ready?, 'Running environment check is failed.'
    end
  end

  # run method test
  def test_run
    if !@filter.ready?
      begin
        @filter.run('foo')
      rescue RuntimeError
        assert true
        return
      else
        assert false, 'Envs is not ready but filter.run does not raise any Exception.'
      end
    end

    assert_equal '', @filter.run('some texts')
  end
end
