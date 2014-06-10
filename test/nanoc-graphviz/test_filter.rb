# encoding: utf-8
#
# Graphviz filter test

require 'minitest_helper'

module Nanoc
  module Graphviz
    # nanoc-graphviz Filter's test
    class FilterTest < MiniTest::Test
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
        if @filter.ready?
          assert_equal '', @filter.run('some texts')
        else
          check_run_error
        end
      end

      private

      def check_run_error
        @filter.run('foo')
      rescue RuntimeError
        assert true
      else
        assert false, 'Envs is not ready but no Error raisen'
      end
    end
  end
end
