class roundcube (
  $roundcube_package = hiera('roundcube_package'),
  $roundcube_path = hiera('roundcube_path'),
  $roundcube_http_conf = hiera('roundcube_http_conf'),
  $roundcube_http_os = hiera('roundcube_http_os'),
) {
  Class['roundcube::install'] -> Class['roundcube::config'] -> Class['roundcube::command'] ~> Class['apache::service']
  
  include roundcube::install
  include roundcube::config
  include roundcube::command
  include apache
}
