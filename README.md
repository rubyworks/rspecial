# RSpecial

[Homepage](http://rubyworks.github.com/rspecial) /
[Source Code](http://github.com/rubyworks/rspecial) /
[Mailing List](http://groups.google.com/group/rubyworks-mailinglist)

_Well, isn't that special._

<br/>

RSpecial is an BRASS-compliant *assertions framework*. It defines
the RSpec `should` handlers and the set of RSpec-compatible matchers
allowing developers to change test frameworks without having to change
a slew of previously defined assertions.

RSpecial utilizes the [Assay](http://rubyworks.github.com/assay)
assertions meta-framework on the backend. Assay defines assertions
in the same way that Ruby defines exceptions. An assertion is nothing
more that an extended Exception class. Assay provides a complete set
of these assertion classes for all common assertion needs.
See [Assay](http://rubyworks.github.com/assay) project for more
information on this foundational library.


## INSTRUCTION

Simply require the `rspecial` script, and include the `RSpecial::Matchers`
or `Test::Matchers` mixin module into your test framework wherever it requires
it (which may be as simple as the toplevel namespace).

    require 'rspecial'

    include RSpecial::Matchers

Or,

    include Test::Matchers

Now assertions can be made just as if you were using RSpec.

    10.should be_kind_of(Integer)


## LIMITATIONS

Note that compatibility is not 100%, but it is close. Compatibilty will improve
with future releases. Please feel _obligated_ to submit a patch, if you need
a missing a feature ;)


## INSTALLATION

To install with RubyGems simply open a console and type:

    $ gem install rspecial

Old=shcool site installations via a tarball can be done with [Ruby Setup](http://rubyworks.github.com/setup)
(`gem install setup`).


## COPYRIGHTS

Copyright (c) 2012 Rubyworks

This program is ditributed under the terms of the *BSD-2-Cluase* license.

See COPYING.rdoc file for details.

