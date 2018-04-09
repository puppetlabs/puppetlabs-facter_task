#!/opt/puppetlabs/puppet/bin/ruby

require 'puppet'
require 'json'
require 'open3'

def get(fact)
  if Gem.win_platform?
    require 'win32/registry'
    begin
      installed_dir = Win32::Registry::HKEY_LOCAL_MACHINE.open('SOFTWARE\Puppet Labs\Puppet') do |reg|
        dir = reg['RememberedInstallDir64']
        break dir if File.exist?(dir)
        reg['RememberedInstallDir']
      end
      facter = File.join(installed_dir, 'bin', 'facter.bat')
    rescue Win32::Registry::Error
      facter = ''
    end
  else
    facter = '/opt/puppetlabs/puppet/bin/facter'
  end

  # Fall back to PATH lookup if puppet-agent isn't installed
  facter = 'facter' unless File.exist?(facter)

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
