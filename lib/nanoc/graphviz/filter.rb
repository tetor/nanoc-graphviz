# encoding: utf-8

# Graphviz filter
module Nanoc::Graphviz
  class Filter < Nanoc::Filter
    identifier :graphviz

    # convert Graphviz code to image
    #
    # @param [String] content  Graphviz code
    # @return [String] none  empty string
    def run(content, params={})
      ''
    end

  end
end
