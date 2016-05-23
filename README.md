# puppet-percona

[![Build Status](https://img.shields.io/travis/hfm/puppet-percona/master.svg?style=flat-square)](https://travis-ci.org/hfm/puppet-percona)
[![Puppet Forge](https://img.shields.io/puppetforge/v/hfm/percona.svg?style=flat-square)](https://forge.puppetlabs.com/hfm/percona)

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with percona](#setup)
    * [Beginning with percona](#beginning-with-percona)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module installs, configures, and manages the [Percona](https://www.percona.com) products.

## Setup

### Beginning with percona

To configure the percona::repo with default parameters, declare the `percona::repo` class.

```puppet
include 'percona::repo'
```

## Usage

### Configuring modules

### Configuring modules from Hiera

## Reference

### Classes

#### Public Classes

- [`percona::repo`](#remi): Configure the Percona repository and import the GPG keys.

#### Private Classes

- `percona::rpm_gpg_key`: Import the RPM GPG key for the Percona.

### Parameters

## Limitations

This module has been tested on:

- RedHat Enterprise Linux 5, 6, 7
- CentOS 5, 6, 7
- Scientific Linux 5, 6, 7
- Ubuntu 12.04, 14.04, 16.04
- Debian 6, 7, 8

## Development

### Running tests

The STNS puppet module contains tests for both [rspec-puppet](http://rspec-puppet.com/) (unit tests) and [beaker-rspec](https://github.com/puppetlabs/beaker-rspec) (acceptance tests) to verify functionality. For detailed information on using these tools, please see their respective documentation.

#### Testing quickstart

- Unit tests:

```console
$ bundle install
$ bundle exec rake all
```

- Acceptance tests:

```console
# Set your DOCKER_HOST variable
$ eval "$(docker-machine env default)"

# Run beaker acceptance tests
$ BEAKER_set=centos7 bundle exec rake beaker
```
