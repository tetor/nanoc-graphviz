$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'nanoc'
require 'nanoc/graphviz'

require 'minitest/autorun'
require 'minitest/rg'

require 'coveralls'
Coveralls.wear!
