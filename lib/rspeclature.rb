require 'assay'
require 'rspeclature/matchers'
require 'rspeclature/have'
require 'rspeclature/should'

# This Test::Matchers module holds all matcher methods, which can be mixed into
# one's testing scope (e.g. World).
#
module Test
  module Matchers
    include RSpeclature::Matchers
  end
end

