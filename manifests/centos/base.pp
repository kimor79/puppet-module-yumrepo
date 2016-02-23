# CentOS Base repos
class yumrepo::centos::base (
  $base_baseurl          = undef,
  $base_mirrorlist       = 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=os',
  $centosplus_baseurl    = undef,
  $centosplus_mirrorlist = 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=centosplus',
  $contrib_baseurl       = undef,
  $contrib_mirrorlist    = 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=contrib',
  $extras_baseurl        = undef,
  $extras_mirrorlist     = 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=extras',
  $updates_baseurl       = undef,
  $updates_mirrorlist    = 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=updates',
) {

  yumrepo::repo { 'centos-base':
    baseurl    => $base_baseurl,
    descr      => 'CentOS-$releasever - Base',
    file       => 'CentOS-Base',
    mirrorlist => $base_mirrorlist,
    gpgcheck   => '1',
    gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-${::operatingsystemmajrelease}",
    order      => '10',
  }
  
  yumrepo::repo { 'centos-updates':
    baseurl    => $updates_baseurl,
    descr      => 'CentOS-$releasever - Updates',
    file       => 'CentOS-Base',
    mirrorlist => $updates_mirrorlist,
    gpgcheck   => '1',
    gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-${::operatingsystemmajrelease}",
    order      => '20',
  }
  
  yumrepo::repo { 'centos-extras':
    baseurl    => $extras_baseurl,
    descr      => 'CentOS-$releasever - Extras',
    file       => 'CentOS-Base',
    mirrorlist => $extras_mirrorlist,
    gpgcheck   => '1',
    gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-${::operatingsystemmajrelease}",
    order      => '30',
  }

  yumrepo::repo { 'centos-centosplus':
    baseurl    => $centosplus_baseurl,
    descr      => 'CentOS-$releasever - Plus',
    file       => 'CentOS-Base',
    mirrorlist => $centosplus_mirrorlist,
    gpgcheck   => '1',
    enabled    => '0',
    gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-${::operatingsystemmajrelease}",
    order      => '40',
  }

  yumrepo::repo { 'centos-contrib':
    baseurl    => $contrib_baseurl,
    descr      => 'CentOS-$releasever - Contrib',
    file       => 'CentOS-Base',
    mirrorlist => $contrib_mirrorlist,
    gpgcheck   => '1',
    enabled    => '0',
    gpgkey     => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-${::operatingsystemmajrelease}",
    order      => '50',
  }
}
