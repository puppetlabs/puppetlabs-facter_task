#!/opt/puppetlabs/puppet/bin/ruby

require_relative '../lib/facts'

params = JSON.parse(STDIN.read)
fact = params['fact']

facts = Facts.new
facts.resolve(fact)
