require 'assay'
require 'rspecish/matchers'
require 'rspecish/have'
require 'rspecish/should'

# This module holds allmatcher methods, which can be mixed into
# one's testing scope (e.g. World).
#
module Assay::Matchers
  include RSpecish::Matchers
end

