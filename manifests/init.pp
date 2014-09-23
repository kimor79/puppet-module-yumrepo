# == Class: yumrepo
#
# This manages /etc/yum.repos.d/
#
# === Parameters
#
# [*manage_dir*]
#   Set to true to rid the yum directory of any files not managed by puppet.
#   Default is false.
#
# [*yumrepo_dir*]
#   The location of the yum repo files. Default is /etc/yum.repos.d/.
#
# === Variables
#
# [*repos*]
#   A hash of yum repos to add. All yum repo options should be supported.
#
# === Examples
#
#  class { yumrepo:
#    repos => {
#      epel => {
#        descr            => 'Extra Packages for Enterprise Linux 6 - $basearch',
#        enabled          => '1',
#        failoverpriority => 'priority',
#        gpgcheck         => '1',
#        gpgkey           => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6',
#        mirrorlist       => 'https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=$basearch',
#      }
#    }
#  }
#
# === Authors
#
# Kimo Rosenbaum <kimor79@yahoo.com>
#
# === Copyright
#
# Copyright 2014 Kimo Rosenbaum and contributors
#
class yumrepo (
  $manage_dir  = $yumrepo::params::manage_dir,
  $repo_data   = $yumrepo::params::repo_data,
  $yumrepo_dir = $yumrepo::params::yumrepo_dir,
) inherits yumrepo::params {

  file { $yumrepo_dir:
    ensure  => directory,
    purge   => $manage_dir,
    recurse => true,
  }

  if $repo_data {
    create_resources('yumrepo::repo', $repo_data)
  }
}
