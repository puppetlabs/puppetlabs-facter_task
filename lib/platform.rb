# frozen_string_literal: true

# Used for detecting facter and puppet paths based
# on the platform we are running on.
class Platform
  def initialize
    if Gem.win_platform?
      require 'win32/registry'
      @installed_dir =
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
          # Rescue missing registry path and return ruby bin path for installed gems
          File.dirname(Gem.ruby).sub('/bin', '')
        end

      @platform = :windows_like
    else
      @installed_dir = '/opt/puppetlabs/puppet/bin'
      @platform = :linux_like
    end
  end

  def facter_path
    return 'facter' unless File.exist?(@installed_dir)

    if @platform == :linux_like
      File.join(@installed_dir, 'facter')
    else
      File.join(@installed_dir, 'bin', 'facter.bat')
    end
  end

  def puppet_path
    return 'puppet' unless File.exist?(@installed_dir)

    if @platform == :linux_like
      File.join(@installed_dir, 'puppet')
    else
      File.join(@installed_dir, 'bin', 'puppet.bat')
    end
  end
end
