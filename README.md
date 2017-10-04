
# facter_task

#### Table of Contents

1. [Description](#description)
2. [Requirements](#requirements)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Getting help - Some Helpful commands](#getting-help)

## Description

This module provides the facter_task task. This task allows you to discover facts about remote machines in your infrastructure.

## Requirements
This module is compatible with Puppet Enterprise and Puppet Bolt.

Puppet Enterprise 2017.3 or later has to be installed on the machine from which you are running task commands (the controller node). Machines receiving task requests must be Puppet agents.
OR
Puppet Bolt 0.3.2 or later has to be installed on the machine from which you are running task commands. Machines receiving task requests must have SSH or WinRM services enabled.

## Usage

To run a facter_task task, use the task command, specifying the fact you want to retrieve.

* With PE on the command line, run `puppet task run facter_task fact=<FACT>`.
* With Bolt on the command line, run `bolt task run facter_task fact=<FACT>`.

For example, to check the operating system family on a machine, run:

* With PE, run `puppet task run facter_task fact=osfamily --nodes neptune`
* With Bolt, run `bolt task run facter_task fact=osfamily --nodes neptune --modules ~/modules`

You can also run tasks in the PE console. See PE task documentation for complete information.

## Reference

To view the available actions and parameters, on the command line, run `puppet task show facter_task` or see the facter_task module page on the [Forge](https://forge.puppet.com/puppetlabs/facter_task/tasks).

For a complete list of facts that are supported, see the Puppet [core facts](https://docs.puppet.com/facter/latest/core_facts.html) documentation.

## Getting Help

To display help for the facter_task task, run `puppet task show facter_task`

To show help for the task CLI, run `puppet task run --help` or `bolt task run --help`

