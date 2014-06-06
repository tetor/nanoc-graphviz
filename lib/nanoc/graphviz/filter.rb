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
      fail 'Runtime environments is not ready' unless ready?

      ''
    end

    def ready?
      graphviz_ready?
    end


    private
    # Whether the Graphviz installed
    #
    # @return [Boolean]
    def graphviz_ready?
      system('which dot >/dev/null 2>&1')
    end

  end
end
