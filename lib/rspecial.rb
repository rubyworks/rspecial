require 'assay'
require 'rspecial/matchers'
require 'rspecial/have'
require 'rspecial/should'

# This Test::Matchers module holds all matcher methods, which can be mixed into
# one's testing scope (e.g. World).
#
module Test
  module Matchers
    include RSpecial::Matchers
  end
end
