[![Build Status](http://img.shields.io/travis/tetor/nanoc-graphviz.svg?style=flat)](https://travis-ci.org/tetor/nanoc-graphviz)
[![Coverage Status](https://coveralls.io/repos/tetor/nanoc-graphviz/badge.svg)](https://coveralls.io/r/tetor/nanoc-graphviz)
[![Join the chat at https://gitter.im/tetor/nanoc-graphviz](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/tetor/nanoc-graphviz?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

# Nanoc::Graphviz

Nanoc Graphviz filter plugin.

This filter converts dot file to PNG.

## Installation

Add this line to your application's Gemfile:

    gem 'nanoc-graphviz'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nanoc-graphviz

## Usage

This plugin adds `:graphviz` filter to nanoc.

In Nanoc Rules file, please write compile and route settings as below.

    compile '*' do
      if item[:extension] == 'dot'
        filter :graphviz
      end
    end

    route '*' do
      if item[:extension] == 'dot'
        item.identifier.chop + '.png'
      end
    end

If you forget route setting, the filter will generate PNG file but it extension will be same to source file. (perhaps '.dot')


## Contributing

1. Fork it ( https://github.com/tetor/nanoc-graphviz/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
