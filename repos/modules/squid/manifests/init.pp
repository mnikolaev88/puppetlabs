class squid (
  $squid_package = hiera('squid_package'),
  $squid_service = hiera('squid_service'),
  $squid_path = hiera('squid_path'),
) {
  Class['squid::install'] -> Class['squid::config'] ~> Class['squid::service']
  
  include squid::install
  include squid::config
  include squid::service

}
