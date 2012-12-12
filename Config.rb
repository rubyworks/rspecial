#!/usr/bin/env ruby

# Test coverage report.
profile :coverage do

  # Setup QED.
  config :qed do
    require 'simplecov'
    SimpleCov.start do
      coverage_dir 'log/coverage'
    end
  end

end

