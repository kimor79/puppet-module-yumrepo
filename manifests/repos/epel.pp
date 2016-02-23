# Epel repos
class yumrepo::epel (
  $debug_baseurl     = undef,
  $debug_mirrorlist  = "https://mirrors.fedoraproject.org/metalink?repo=epel-debug-${::operatingsystemmajrelease}&arch=\$basearch",
  $epel_baseurl      = undef,
  $epel_mirrorlist   = "https://mirrors.fedoraproject.org/metalink?repo=epel-${::operatingsystemmajrelease}&arch=\$basearch",
  $source_baseurl    = undef,
  $source_mirrorlist = "https://mirrors.fedoraproject.org/metalink?repo=epel-source-${::operatingsystemmajrelease}&arch=\$basearch",
) {

  yumrepo::repo { 'epel':
    baseurl        => $epel_baseurl,
    descr          => "Extra Packages for Enterprise Linux %{::operatingsystemmajrelease} - \$basearch",
    file           => 'epel',
    mirrorlist     => $epel_mirrorlist,
    failovermethod => 'priority',
    enabled        => '1',
    gpgcheck       => '1',
    gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::operatingsystemmajrelease}",
    order          => '10',
  }

  yumrepo::repo { 'epel-debuginfo':
    baseurl        => $debuginfo_baseurl,
    descr          => "Extra Packages for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - Debug",
    file           => 'epel',
    mirrorlist     => $debuginfo_mirrorlist,
    failovermethod => 'priority',
    enabled        => '0',
    gpgcheck       => '1',
    gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::operatingsystemmajrelease}",
    order          => '11',
  }

  yumrepo::repo { 'epel-source':
    baseurl        => $source_baseurl,
    descr          => "Extra Packages for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch - Source",
    file           => 'epel',
    mirrorlist     => $source_mirrorlist,
    failovermethod => 'priority',
    enabled        => '0',
    gpgcheck       => '1',
    gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::operatingsystemmajrelease}",
    order          => '12',
  }
}
