Manage yum repos
================

#### Table of Contents

1. [Overview](#overview)
1. [Module Description - What the module does and why it is useful](#module-description)
1. [Setup - The basics of getting started with yumrepo](#setup)
    * [What yumrepo affects](#what-yumrepo-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with yumrepo](#beginning-with-yumrepo)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Overview

This module manages /etc/yum.repos.d/ in its entirety.

## Module Description

The builtin yumrepo type is not flexible enough to completely manage all of the
yum repos configured on a system. This module adds the missing pieces to allow
for complete management of yum repos. Namely, multiple repos per file and
configuration via Hiera.

## Setup

### What yumrepo affects

* /etc/yum.repos.d/ (configurable) and [optionally] all files within.

## Usage

In Hiera:

```
classes:
  - yumrepo
  
# Set this to true to purge non-puppet-managed repos
#yumrepo::manage_dir: true

yumrepo::repos:
  myrepo:
    baseurl: https://myreposerver/rpms
    descr: My internal repo
    file: my-internal-repo
  myrepo-source:
    baseurl: https://myreposerver/srpms
    descr: My internal repo source
    file: my-internal-repo
```

### Configuration

  * manage_dir: Set to true to completely manage all files in /etc/yum.repos.d/. Warning, if you don't define base yum repos, they will be deleted. Default is `false`
  * yumrepo_dir: The directory where repo files are kept. Default is `/etc/yum.repos.d`.
  * repos: A hash of repos to configure. See (yumrepo)[https://docs.puppetlabs.com/references/latest/type.html#yumrepo] for [most] available options.

## Limitations

Primarily meant for RedHat family of OSes.

## Development

Patches welcome.
