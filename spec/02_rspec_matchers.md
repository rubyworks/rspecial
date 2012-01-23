## RSpec Matchers

### should equal

  1.should = 1

  expect ::EqualAssay do
    1.should = 2
  end

### be_true

  true.should be_true

  expect ::TrueAssay do
    false.should be_true
  end

### be_false

  false.should be_false

  expect ::FalseAssay do
    true.should be_false
  end

### be_nil

  nil.should be_nil

  expect ::NilAssay do
    true.should be_nil
  end

### be_empty

  [].should be_empty

  expect ::EmptyAssay do
    [1].should be_empty
  end

  [1].should_not be_empty

### be_close

  1.should be_close(1.5, 2)

  expect ::WithinAssay do
    1.should be_close(0.5, 2)
  end

  1.should_not be_close(0.5, 2)

### match

  "abc".should match(/a/)

  expect ::MatchAssay do
    "abc".should match(/x/)
  end

  "abc".should_not match(/g/)

### eql

  1.should eql(1)

  expect ::EqualityAssay do
    1.should eql(1.0)
  end

  1.should_not eql(1.0)

### equal

  :a.should equal(:a)

  expect ::IdentityAssay do
    "a".should equal("a")
  end

  :a.should_not equal('a')

### be_instance_of

  1.should be_instance_of(Fixnum)

  expect ::InstanceAssay do
    1.should be_instance_of(String)
  end

  1.should_not be_instance_of(String)

### be_kind_of

  1.should be_kind_of(Integer)

  expect ::KindAssay do
    1.should be_kind_of(String)
  end

  1.should_not be_kind_of(String)

### raise_error

  procedure = lambda{ raise ::ArgumentError }

  procedure.should raise_error(::ArgumentError)

  expect ::RaiseAssay do
    procedure.should raise_error(::TypeError)
  end

  procedure.should_not raise_error(::TypeError)

### respond_to

  "string".should respond_to(:upcase)

  expect ::RespondAssay do
    "string".should respond_to(:not_a_method)
  end

  "string".should_not respond_to(:not_a_method)

### satisfy

  5.should satisfy{ |x| x > 3 }

  expect ::ExecutionAssay do
    5.should satisfy{ |x| x < 3 }
  end

  5.should_not satisfy{ |x| x < 3 }

### throw_symbol

  procedure = lambda{ throw :foo }

  procedure.should throw_symbol(:foo)

  expect ::ThrowAssay do
    procedure.should throw_symbol(:bar)
  end

  procedure.should_not throw_symbol(:bar)

## equate_to

This is not strictly an RSpec matcher, but we have thrown it in for good measure.
It is equivalent to using the `#should=` method.

  10.should equate_to(10)

  expect ::EqualityAssay do
    10.should equate_to(10.0)
  end

  10.should_not equate_to(10.0)

## be_like

The `#be_like` matcher is not strictly an RSpec matcher, but we have thrown it
in for good measure.

  /a/.should be_like('a')

  expect ::LikeAssay do
    /a/.should be_like('b')
  end

  /a/.should_not be_like('b')

