#!/opt/puppetlabs/puppet/bin/ruby

require 'json'
require 'open3'

def get(fact)
  if Gem.win_platform?
    require 'win32/registry'
    installed_dir =
      begin
        Win32::Registry::HKEY_LOCAL_MACHINE.open('SOFTWARE\Puppet Labs\Puppet') do |reg|
          # rubocop:disable Style/RescueModifier
          # Rescue missing key
          dir = reg['RememberedInstallDir64'] rescue ''
          # Both keys may exist, make sure the dir exists
          break dir if File.exist?(dir)

          # Rescue missing key
          reg['RememberedInstallDir'] rescue ''
          # rubocop:enable Style/RescueModifier
        end
      rescue Win32::Registry::Error
        # Rescue missing registry path
        ''
      end

    facter =
      if installed_dir.empty?
        ''
      else
        File.join(installed_dir, 'bin', 'facter.bat')
      end
  else
    facter = '/opt/puppetlabs/puppet/bin/facter'
  end

  # Fall back to PATH lookup if puppet-agent isn't installed
  facter = 'facter' unless File.exist?(facter)

  cmd = [facter, '-p', '--json']
  cmd << fact if fact
  stdout, stderr, status = Open3.capture3(*cmd)
  raise "Exit #{status.exitstatus} running #{cmd.join(' ')}: #{stderr}" if status != 0
  stdout
end

params = JSON.parse(STDIN.read)
fact = params['fact']

begin
  result = get(fact)
  puts result
  exit 0
rescue => e
  puts({ _error: { kind: 'facter_task/failure', msg: e.message } }.to_json)
  exit 1
end
