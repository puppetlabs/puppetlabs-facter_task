# frozen_string_literal: true

RSpec.configure do |c|
  c.before :suite do
    config_path = case os[:family]
                  when 'windows'
                    'C:\ProgramData\PuppetLabs\puppet\etc\puppet.conf'
                  else
                    '/etc/puppetlabs/puppet/puppet.conf'
                  end
    config_pp = <<-MANIFEST
      file { '#{config_path}':
      content => "[main]\nshow_diff = true",
      force   => true,
      }
    MANIFEST
    apply_manifest(config_pp)
  end
end
