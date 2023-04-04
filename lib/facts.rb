# frozen_string_literal: true

require 'json'
require 'puppet'
require 'puppet/util/execution'

require_relative 'platform'

# Gathers facts taking into account different combinations of puppet and facter,
# because fact gathering in done differently depending on puppet and facter versions
class FactsResolver
  def initialize
    @platform = Platform.new
    @facter_executable = @platform.facter_path
    @puppet_executable = @platform.puppet_path
  end

  # Resolves fact on the system, if a specific fact is given,
  # it will only resolve that fact,
  # otherwise it will resolve all facts
  def resolve(fact)
    facts_command = determine_facts_command
    facts_command << fact if fact

    begin
      po = Puppet::Util::Execution.execute(facts_command, combine: false)
      raise "Exit #{po.exitstatus} running #{facts_command.join(' ')}. STDOUT: #{po}" if po.exitstatus != 0

      puts po
      exit 0
    rescue StandardError => e
      puts({ _error: { kind: 'facter_task/failure', msg: e.message } }.to_json)
      exit 1
    end
  end

  private

  # Determine the command tht will be used to gather facts,
  # this depends on facter version and on puppet version
  def determine_facts_command
    facter_version = component_version(@facter_executable)

    if facter_version.match?(%r{^[0-2]\.})
      [@facter_executable, '-p', '--json']
    elsif facter_version.match?(%r{^3\.})
      [@facter_executable, '-p', '--json', '--show-legacy']
    else
      # facter 4
      determine_command_for_facter4
    end
  end

  def parse(json_string)
    result = JSON.parse(json_string)
    result.to_json
  end

  # Supported components are facter and puppet,
  # but it can be any executable that supports --version argument
  def component_version(exec)
    cmd = "#{exec} --version"
    po = Puppet::Util::Execution.execute(cmd, combine: false)
    raise "Exit #{po.exitstatus} running #{cmd.join(' ')}. STDOUT: #{po}" if po.exitstatus != 0

    po.strip
  end

  # Starting with facter 4 and puppet 7, `facter -p` and `facter --puppet`
  # have been replaced by `puppet facts show`
  def determine_command_for_facter4
    puppet_version = component_version(@puppet_executable)

    if puppet_version.match?(%r{^6\.})
      # puppet 6 with facter 4
      [@facter_executable, '--json', '--show-legacy']
    else
      # puppet 7 with facter 4
      [@puppet_executable, 'facts', 'show', '--show-legacy']
    end
  end
end
