# RSpecish

## Setup

First we need to require the library.

  require 'rspecish'

This will load Assay and the RSpec extension, which will add `#should`
and `#should_not` to `BasicObject` class, and create a module called
`RSpecish::Matchers`. This moudle is included into `Assay::Matchers`.
To make use of it, we simply need to include either of these modules into
our test scope.

  include ::Assay::Matchers

With that in place, we are ready to use the matchers.

