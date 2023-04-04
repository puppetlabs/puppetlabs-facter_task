#!/opt/puppetlabs/puppet/bin/ruby
# frozen_string_literal: true

require_relative '../lib/facts'

params = JSON.parse($stdin.read)
fact = params['fact']

facts = FactsResolver.new
facts.resolve(fact)
