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
      # @return [String] none  empty string
      def run(content, _ = {})
        fail 'Runtime environments is not ready' unless ready?
        command = "dot -Tpng -o #{output_filename} < #{content}"
        system(command)
        nil
      end

      def ready?
        graphviz_ready?
      end

      private

      # Whether the Graphviz installed
      #
      # @return [Boolean]
      def graphviz_ready?
        unless system('which dot >/dev/null 2>&1')
          fail 'Graphviz is not installed.'
        end
        true
      end
    end
  end
end
