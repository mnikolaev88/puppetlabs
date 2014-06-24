class roundcube (
  $roundcube_package = hiera('roundcube_package'),
  $roundcube_service = hiera('roundcube_service'),
) {
  Class['roundcube::install'] ~> Class['roundcube::service'] -> Class['roundcube::config']
  
  include roundcube::install
  include roundcube::service
  include roundcube::config
}
