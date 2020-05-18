# frozen_string_literal: true

require 'singleton'

class LitmusHelper
  include Singleton
  include PuppetLitmus
end

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
    LitmusHelper.instance.apply_manifest(config_pp)
  end
end
