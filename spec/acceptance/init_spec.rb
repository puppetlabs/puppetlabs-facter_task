# run a test task
require 'spec_helper_acceptance'

describe 'facter_task task' do
  operating_system_fact = fact('operatingsystem')
  os_family_fact = fact('osfamily')

  describe 'puppet facts' do
    it 'get a puppet fact' do
      result = run_task(task_name: 'facter_task', params: 'fact=osfamily')
      expect_multiple_regexes(result: result, regexes: [%r{status.*#{os_family_fact}}, %r{Job completed. 1/1 nodes succeeded|Ran on 1 node}])
      result = run_task(task_name: 'facter_task', params: 'fact=operatingsystem')
      expect_multiple_regexes(result: result, regexes: [%r{status.*#{operating_system_fact}}, %r{Job completed. 1/1 nodes succeeded|Ran on 1 node}])
    end
  end
end
