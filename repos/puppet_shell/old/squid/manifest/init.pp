class squid (
  $squid_package = hiera('squid_package'),
  $squid_service = hiera('squid_service'),
) {
  Class['squid::install'] ~> Class['squid::service'] -> Class['squid::config']
  
  include squid::install
  include squid::service
  include squid::config
}
