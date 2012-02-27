require 'assay'
require 'assay-rspec/matchers'
require 'assay-rspec/have'
require 'assay-rspec/should'

# This module holds allmatcher methods, which can be mixed into
# one's testing scope (e.g. World).
#
module Assay::Matchers
  include Assay::RSpec::Matchers
end

