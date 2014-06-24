class apache (
  $apache_package = hiera('apache_package'),
  $apache_service = hiera('apache_service'),
  $apache_index = hiera('apache_index'),
) {
  Class['apache::install'] -> Class['apache::config'] -> Class['apache::service']
  
  include apache::install
  include apache::config
  include apache::service
}
