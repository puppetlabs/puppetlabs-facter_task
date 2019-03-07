# run a test task
require 'spec_helper_acceptance'

describe 'facter_task task' do
  include Beaker::TaskHelper::Inventory
  include BoltSpec::Run

  operating_system_fact = fact('operatingsystem')
  os_family_fact = fact('osfamily')

  describe 'facter_task' do
    it 'get a puppet fact' do
      result = task_run('facter_task', 'fact' => 'osfamily')

      expect(result.first['status']).to eq('success')
      expect(result.first['result']).to eq('osfamily' => os_family_fact)

      result = task_run('facter_task', 'fact' => 'operatingsystem')

      expect(result.first['status']).to eq('success')
      expect(result.first['result']).to eq('operatingsystem' => operating_system_fact)
    end

    it 'get a structured fact' do
      result = task_run('facter_task', 'fact' => 'os')

      expect(result.first['status']).to eq('success')
      expect(result.first['result']).to include('os')
      expect(result.first['result']['os']['family']).to eq(os_family_fact)
      expect(result.first['result']['os']['name']).to eq(operating_system_fact)
    end

    it 'gets all facts' do
      result = task_run('facter_task', {})

      expect(result.first['status']).to eq('success')
      expect(result.first['result']).to include('os', 'networking', 'kernel')
    end

    it 'fails cleanly' do
      result = task_run('facter_task', 'fact' => '--foo')

      expect(result.first['status']).to eq('failure')
      expect(result.first['result']['_error']['kind']).to eq('facter_task/failure')
      expect(result.first['result']['_error']['msg']).to match(
        %r{Exit 1 running .*bin/facter.* -p --json --foo: error: unrecognised option '--foo'},
      )
    end
  end
end
