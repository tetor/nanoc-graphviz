# encoding: utf-8

# Graphviz filter
module Nanoc::Graphviz
  class Filter < Nanoc::Filter

    # set filter name
    identifier :graphviz

    # convert Graphviz code to image
    #
    # @param [String] content  Graphviz code
    # @return [String] none  empty string
    def run(content, params={})
      ''
    end

    def is_ready?
      has_graphviz?
    end


    private
    # Whether the Graphviz installed
    #
    # @return [Boolean]
    def has_graphviz?
      system('which', 'dot')
    end

  end
end
