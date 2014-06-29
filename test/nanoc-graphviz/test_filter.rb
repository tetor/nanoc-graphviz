# encoding: utf-8
#
# Graphviz filter test

require 'minitest_helper'
require 'tmpdir'

module Nanoc
  module Graphviz
    # nanoc-graphviz Filter's test
    class FilterTest < MiniTest::Test
      def setup
        @filter_class = ::Nanoc::Graphviz::Filter
        @filter = @filter_class.new
      end

      def test_ready
        if system('which dot >/dev/null 2>&1')
          assert @filter.ready?, 'Running environment is not ready.'
        else
          assert !@filter.ready?, 'Running environment check is failed.'
        end
      end

      def test_from_binary
        assert @filter_class.from_binary?, 'from setting is not correct.'
      end

      def test_to_binary
        assert @filter_class.to_binary?, 'to binary setting is not correct.'
      end

      # run method test
      def test_run
        if @filter.ready?
          tmp_dir, filename = generate_test_item
          assert_equal nil, @filter.run("#{tmp_dir}/#{filename}")
          FileUtils.remove_entry tmp_dir
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

      def generate_test_item
        dot_lang = 'graph graphname {a -- b -- c;b -- d;}'
        in_f_name = 'graphviz_test.dot'

        tmp_dir = Dir.mktmpdir
        open("#{tmp_dir}/#{in_f_name}", 'w') do |f|
          f.puts(dot_lang)
        end
        [tmp_dir, in_f_name]
      end
    end
  end
end
