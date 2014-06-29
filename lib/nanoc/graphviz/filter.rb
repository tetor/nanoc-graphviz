# encoding: utf-8

# Graphviz filter
module Nanoc
  module Graphviz
    # Graphviz Filter class
    class Filter < Nanoc::Filter
      # set filter name
      identifier :graphviz
      # type :type => :binary
      type :binary

      # convert Graphviz code to image
      #
      # @param [String] content  Graphviz code
      # @return [Integer] command process status
      # @raise [RuntimeError]
      def run(content, _ = {})
        fail 'Runtime environments is not ready' unless ready?
        command = "dot -Tpng -o #{output_filename} < #{content}"
        system(command)
        $?
      end

      # check runtime envs
      #
      # @return [Boolean]
      def ready?
        graphviz_ready?
      end

      private

      # Whether the Graphviz installed
      #
      # @return [Boolean]
      def graphviz_ready?
        if system('which dot >/dev/null 2>&1')
          return true
        end
        false
      end
    end
  end
end
