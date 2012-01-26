---
source:
- meta
authors:
- name: Thomas Sawyer
  email: transfire@gmail.com
copyrights:
- holder: Thomas Sawyer
  year: '2012'
  license: BSD-2-Clause
replacements: []
alternatives: []
requirements:
- name: assay
- name: detroit
  groups:
  - build
  development: true
- name: qed
  groups:
  - test
  development: true
dependencies: []
conflicts: []
repositories:
- uri: git@github.com:rubyworks/assay-rspec.git
  scm: git
  name: upstream
resources:
  home: http://rubyworks.github.com/assay-rspec
  docs: http://rubydoc.info/gems/assay-rspec
  code: http://github.com/rubyworks/assay-rspec
  mail: http://groups.google.com/groups/rubyworks-mailinglist
extra: {}
load_path:
- lib
revision: 0
created: '2012-01-18'
summary: RSpec on Assay
title: Assay RSpec
version: 0.1.0
name: assay-rspec
description: ! 'Assay RSpec defines a set of RSpec-compatible matcher methods which

  depend on Assay''s assertion classes. This allows developers to change

  test frameworks without having to change a slew of previously

  defined assertions.'
organization: Rubyworks
date: '2012-01-26'
