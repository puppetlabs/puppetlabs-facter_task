# frozen_string_literal: true

# run a test task
require 'spec_helper_acceptance'

describe 'facter_task task' do
  operating_system_fact = run_shell('facter operatingsystem').stdout.strip
  os_family_fact = run_shell('facter osfamily').stdout.strip

  describe 'facter_task' do
    it 'get a puppet fact', :aggregate_failures do
      result = run_bolt_task('facter_task', 'fact' => 'osfamily')

      expect(result.exit_code).to eq(0)
      expect(result['result']).to eq('osfamily' => os_family_fact)
    end

    it 'get another puppet fact', :aggregate_failures do
      result = run_bolt_task('facter_task', 'fact' => 'operatingsystem')

      expect(result.exit_code).to eq(0)
      expect(result['result']).to eq('operatingsystem' => operating_system_fact)
    end

    it 'get a structured fact', :aggregate_failures do
      result = run_bolt_task('facter_task', 'fact' => 'os')

      expect(result.exit_code).to eq(0)
      expect(result['result']).to include('os')
      expect(result['result']['os']['family']).to eq(os_family_fact)
      expect(result['result']['os']['name']).to eq(operating_system_fact)
    end

    it 'gets all facts', :aggregate_failures do
      expected_facts = (ENV['TARGET_HOST'] == 'localhost') ? ['os', 'kernel'] : ['os', 'networking', 'kernel']
      result = run_bolt_task('facter_task', {})

      expect(result.exit_code).to eq(0)
      expect(result['result']).to include(*expected_facts)
    end

    it 'fails cleanly', :aggregate_failures do
      params = { 'fact' => '--foo' }
      result = run_bolt_task('facter_task', params, expect_failures: true)
      expect(result.exit_code).to eq(255)
      expect(result['result']['_error']['kind']).to eq('facter_task/failure')
      expect(result['result']['_error']['msg']).to match('Exit 1 running')
    end
  end
end
