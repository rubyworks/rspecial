# RSpecial

[Homepage](http://rubyworks.github.com/rspecial) /
[Report Issue](http://github.com/rubyworks/rspecial/issues) /
[Source Code](http://github.com/rubyworks/rspecial)
( [![Build Status](https://secure.travis-ci.org/rubyworks/rspecial.png)](http://travis-ci.org/rubyworks/rspecial) )

_Well, isn't that special._

<br/>

RSpecial is an BRASS-compliant *assertions framework*. It defines
the RSpec's `expect` and `should` handlers and a set of RSpec-compatible matchers
allowing developers to change test frameworks without having to change
a slew of previously defined assertions.

RSpecial utilizes the [Assay](http://rubyworks.github.com/assay)
assertions meta-framework on the back-end. Assay defines assertions
in the same way that Ruby defines exceptions. An assertion is nothing
more that an extended Exception class. Assay provides a complete set
of these assertion classes for all common assertion needs.


## Installation

To install with RubyGems simply open a console and type:

    $ gem install rspecial

Old-school site installations via a tarball can be done with [Ruby Setup](http://rubyworks.github.com/setup)
(`gem install setup`).


## Basic Usage

To use RSpecial, simply require the `rspecial` script, and include the `RSpecial::Matchers`
or `Test::Matchers` mixin module into your test framework wherever it requires
it (which may be as simple as the top-level namespace).

    require 'rspecial'

    include RSpecial::Matchers

Or more generically,

    include Test::Matchers

Now assertions can be made just as if you were using RSpec.

    expect(10).to be_kind_of(Integer)
    
and the traditional way

    10.should be_kind_of(Integer)


## Limitations

Compatibility with RSpec is not 100%, but it is close. Compatibility will improve
with future releases.

Also error messages aren't always as nice, nor always customizable, as they are in RSpec.
This too will improve with future releases.

Please feel _obligated_ to submit a patch if you need a missing a feature ;-)


## Copyrights

RSpecial is copyright open source software 

    Copyright (c) 2012 Rubyworks

This program is distributed under the terms of the [BSD-2-Cluase](http://spdx.org/licenses/BSD-2-Clause) license.

See LICENSE.txt file for details.
