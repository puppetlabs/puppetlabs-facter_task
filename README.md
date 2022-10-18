
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

For information on the classes and types, see the [REFERENCE.md](https://github.com/puppetlabs/puppetlabs-facter_task/blob/main/REFERENCE.md).

## Limitations

For an extensive list of supported operating systems, see [metadata.json](https://github.com/puppetlabs/puppetlabs-facter_task/blob/main/metadata.json)

## Development

Acceptance tests are ran using [puppet_litmus](https://github.com/puppetlabs/puppet_litmus).
To run the acceptance tests follow the instructions [here](https://github.com/puppetlabs/puppet_litmus/wiki/Tutorial:-use-Litmus-to-execute-acceptance-tests-with-a-sample-module-(MoTD)#install-the-necessary-gems-for-the-module).
You can also find a tutorial and walkthrough of using Litmus and the PDK on [YouTube](https://www.youtube.com/watch?v=FYfR7ZEGHoE).

If you run into an issue with this module, or if you would like to request a feature, please file a ticket on the issues tab.

If you have problems getting this module up and running, please [contact Support](http://puppetlabs.com/services/customer-support).

If you submit a change to this module, be sure to regenerate the reference documentation as follows:

```bash
puppet strings generate --format markdown --out REFERENCE.md
```
