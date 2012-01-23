## RSpec Should Method

### should

Becuase the `#should` method used `=~` as the assertion operator,
you can do something a bit unexpected, such as,

    'a'.should /a/


### should=

    10.should = 10

    expect ::EqualAssay do
      10.should = 20
    end

    10.should_not = 20

