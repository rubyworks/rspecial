require 'assay'
require 'rspectation/matchers'
require 'rspectation/have'
require 'rspectation/should'

# This Assay module holds all matcher methods, which can be mixed into
# one's testing scope (e.g. World).
#
# TODO: maybe a better namespace is `Test::Matchers` ?
#
module Assay::Matchers
  include RSpectation::Matchers
end

