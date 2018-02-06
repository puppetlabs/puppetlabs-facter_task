#!/opt/puppetlabs/puppet/bin/ruby

require 'puppet'
require 'json'
require 'open3'

def get(fact)
  if ENV.has_key? 'Path' then
    facter = '"C:\Program Files\Puppet Labs\Puppet\bin\facter"'
    ENV['Path'].split(";").each do |e|
      if %r{Puppet\\bin} =~ e then
        facter = "\"#{e}\\facter\""
      end
    end
  else
    facter = '/opt/puppetlabs/puppet/bin/facter'
  end

  stdout, stderr, status = Open3.capture3(facter, '-p', fact)
  raise Puppet::Error, stderr if status != 0
  { status: stdout.strip }
end

params = JSON.parse(STDIN.read)
fact = params['fact']

begin
  result = get(fact)
  puts result.to_json
  exit 0
rescue Puppet::Error => e
  puts({ status: 'failure', error: e.message }.to_json)
  exit 1
end
