# Private class
class yumrepo::params (
  $manage_dir  = false,
  $yumrepo_dir = '/etc/yum.repos.d',
) {

  $repo_data = hiera_hash('yumrepo::repos', false)

  if $repo_data {
    validate_hash($repo_data)
  }

  validate_bool($manage_dir)
  validate_string($yumrepo_dir)
}
