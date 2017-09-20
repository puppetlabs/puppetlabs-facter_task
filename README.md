
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

This module requires Puppet Enterprise 2017.3 or later to be installed on the machine from which you are running task commands (the controller node). Machines receiving task requests must be Puppet agents.

## Usage

To run a task, use the task command, specifying the fact you want to retrieve.

1. On the command line, run `puppet task facter_task fact=<FACT>`.

For example, to check the operating system family on a machine, run `puppet task facter_task fact=osfamily`

You can also run tasks in the PE console. See PE task documentation for complete information.

## Reference

To view the available actions and parameters, on the command line, run `puppet task show facter_task` or see the facter_task module page on the [Forge](https://forge.puppet.com/puppetlabs/facter_task/tasks).

For a complete list of facts that are supported, see the Puppet [core facts](https://docs.puppet.com/facter/latest/core_facts.html) documentation.

## Getting Help

To display help for the facter_task task, run `puppet task show facter_task`

To show help for the task CLI, run `puppet task run --help`




