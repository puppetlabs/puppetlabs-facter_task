
# facter_task

#### Table of Contents

- [facter_task](#factertask)
      - [Table of Contents](#Table-of-Contents)
  - [Overview](#Overview)
  - [Module Description](#Module-Description)
  - [Setup](#Setup)
    - [Requirements](#Requirements)
  - [Usage](#Usage)
  - [Reference](#Reference)
  - [Limitations](#Limitations)
  - [Development](#Development)

## Overview

This module provides the facter_task task.

## Module Description

This task allows you to discover facts about remote machines in your infrastructure.

## Setup

### Requirements
This module is compatible with Puppet Enterprise and Puppet Bolt.

* To run tasks with Puppet Enterprise, PE 2018.1 or later must be installed on the machine from which you are running task commands. Machines receiving task requests must be Puppet agents.

* To run tasks with Puppet Bolt, Bolt 1.0 or later must be installed on the machine from which you are running task commands. Machines receiving task requests must have SSH or WinRM services enabled.

## Usage

To view the available actions and parameters, on the command line, run `puppet task show facter_task` or see the facter_task module page on the [Forge](https://forge.puppet.com/puppetlabs/facter_task/tasks).
For a complete list of facts that are supported, see the Puppet [core facts](https://docs.puppet.com/facter/latest/core_facts.html) documentation.
To show help for the task CLI, run `puppet task run --help` or `bolt task run --help`

To run a facter_task task, use the task command, specifying the fact you want to retrieve.

* With PE on the command line, run `puppet task run facter_task fact=<FACT>`.
* With Bolt on the command line, run `bolt task run facter_task fact=<FACT>`.

For example, to check the operating system family on a machine, run:

* With PE, run `puppet task run facter_task fact=osfamily --nodes neptune`
* With Bolt, run `bolt task run facter_task fact=osfamily --nodes neptune --modulepath ~/modules`

You can also run tasks in the PE console. See PE task documentation for complete information.

## Reference

For information on the classes and types, see the [REFERENCE.md](https://github.com/puppetlabs/puppetlabs-facter_task/blob/master/REFERENCE.md).

## Limitations

To run acceptance tests against Windows machines locally, ensure that the `BEAKER_password` environment variable has been set to the password of the Administrator user of the target machine.

For an extensive list of supported operating systems, see [metadata.json](https://github.com/puppetlabs/puppetlabs-facter_task/blob/master/metadata.json)

## Development

We are experimenting with a new tool for running acceptance tests. Its name is [puppet_litmus](https://github.com/puppetlabs/puppet_litmus) this replaces beaker as the test runner. To run the acceptance tests follow the instructions from this point [here](https://github.com/puppetlabs/puppet_litmus/wiki/Tutorial:-use-Litmus-to-execute-acceptance-tests-with-a-sample-module-(MoTD)#install-the-necessary-gems-for-the-module).

Puppet modules on the Puppet Forge are open projects, and community contributions are essential for keeping them great. To contribute to Puppet projects, see our [module contribution guide.](https://github.com/puppetlabs/puppetlabs-facter_task/blob/master/CONTRIBUTING.md)



