# Creates a repo definition in the given file
define yumrepo::repo(
  $async                        = undef,
  $bandwidth                    = undef,
  $baseurl                      = undef,
  $cost                         = undef,
  $deltarpm_metadata_percentage = undef,
  $deltarpm_percentage          = undef,
  $descr                        = undef,
  $enabled                      = undef,
  $enablegroups                 = undef,
  $exclude                      = undef,
  $failovermethod               = undef,
  $file                         = undef,
  $gpgcakey                     = undef,
  $gpgcheck                     = undef,
  $gpgkey                       = undef,
  $http_caching                 = undef,
  $include                      = undef,
  $includepkgs                  = undef,
  $ip_resolve                   = undef,
  $keepalive                    = undef,
  $keepcache                    = undef,
  $key_id                       = undef,
  $metadata_expire              = undef,
  $metadata_expire_filter       = undef,
  $metalink                     = undef,
  $mirrorlist                   = undef,
  $mirrorlist_expire            = undef,
  $order                        = '10',
  $password                     = undef,
  $priority                     = undef,
  $protect                      = undef,
  $provider                     = undef,
  $proxy                        = undef,
  $proxy_password               = undef,
  $proxy_username               = undef,
  $repo_gpgcheck                = undef,
  $retries                      = undef,
  $secret_key                   = undef,
  $s3_enabled                   = undef,
  $skip_if_unavailable          = undef,
  $ssl_check_cert_permissions   = undef,
  $sslcacert                    = undef,
  $sslclientcert                = undef,
  $sslclientkey                 = undef,
  $sslverify                    = undef,
  $target                       = undef,
  $throttle                     = undef,
  $timeout                      = undef,
  $ui_repoid_vars               = undef,
  $username                     = undef,
) {

  include yumrepo::params
  $repo_dir = $yumrepo::params::yumrepo_dir

  $full_file = "${repo_dir}/${file}.repo"

  if ! defined(Concat[$full_file]) {
    concat { $full_file:
      ensure         => present,
      ensure_newline => true,
      replace        => true,
      require        => File[$repo_dir],
      warn           => true,
    }
  }

  concat::fragment { $name:
    content => template('yumrepo/repo_template.rb'),
    order   => $order,
    target  => $full_file,
  }
}
