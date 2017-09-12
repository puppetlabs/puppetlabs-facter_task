
# facter_task

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with facter_task task](#setup)
    * [Setup requirements](#setup-requirements)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Description

This module provides the facter_task task. This allows you to run the facter command. For example finding the operating system on a machine. It requires Puppet 5 or bolt installed

## Setup

### Setup Requirements

This module requires either Puppet enterprise or Bolt to function.

## Usage

There are a number of ways to execute the facter_task task. The examples below return the operating symstem family. 

VIA PE-console see link_here

Via BOLT more information here LINK
```bolt
bolt task facter_task osfamily
```

Via the PE CLI, more information here LINK

```pe
puppet task facter_task osfamily
```

## Reference

To get the availible actions and parameters run

```pe
puppet task show facter_task
```

```bolt
puppet task show facter_task
```

or go to https://forge.puppet.com/puppetlabs/facter_task/tasks

For a complete list of default tasks please go to https://docs.puppet.com/facter/latest/core_facts.html

## Development

Here is a quick how to get up and running 
```
git clone git@github.com:puppetlabs/facter_task.git
```
```
bundle install --path .bundle/gems/
```
```
BEAKER_destroy=no PUPPET_INSTALL_TYPE=pe BEAKER_PE_DIR=http://enterprise.delivery.puppetlabs.net/2017.3/ci-ready  BEAKER_PE_VER=2017.3.0-rc8-41-g4981bd3 BEAKER_set=centos7-pooler  bundle exec rspec spec/acceptance
```

This will spit out a vmpooler machine name you can ssh to

```
ssh -i ~/.ssh/id_rsa-acceptance root@<VMPOOLER HOSTNAME FROM ABOVE> 
```

show the status of the openssl facter_task (use the actual name of your node)
```
puppet task run facter_task --nodes cgx1boldbmbi3vn.delivery.puppetlabs.net action=status facter_task=httpd
```

display help for facter_task
```
puppet task show facter_task
```

show help for the task cli
```
puppet task run --help
```
