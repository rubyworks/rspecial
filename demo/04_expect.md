## RSpec Expect

### expect

Expect is RSpecs new and approved assertion notation. It works
very much like `#should` but it isn't an Object extension, which
is considered a "*better practice*".

    expect(10).to eq(10)

### operators

It can also delegate operators, so the above example can also be
written.

    expect(10).to == 10

    assert_raises EqualAssay do
      expect(10).to == 20
    end

