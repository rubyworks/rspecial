module RSpecial

  # Operatics delegates operator based assertions for execpt.rb.
  #
  class Operatics

    #
    def initialize(target, negate=false)
      @target = target
      @negate = negate
    end

  private

    #
    def method_missing(op, *a, &b)
      super(op, *a, &b) if op.to_s =~ /^\w/

      if @negate
        refute!(op, *a, &b)
      else
        assert!(op, *a, &b)
      end
    end

    #
    def assert!(op, *a, &b)
      if generic?(op)
        if assay = Assertion.by_operator(op)
          return assay.assert!(@target, *a, &b)
        end
      end
      assert @target.send(op, *a, &b)
    end

    #
    def refute!(op, *a, &b)
      if generic?(op)
        if assay = Assertion.by_operator(op)
          return assay.refute!(@target, *a, &b)
        end
      end
      refute @target.send(op, *a, &b)
    end

    #
    def generic?(op)
      @target.method(op).owner == ::Kernel
    end if Method.method_defined?(:owner)

    #
    def generic?(op)
      @target.method(op).to_s.include?('(Kernel)')
    end unless Method.method_defined?(:owner)

  end

end
