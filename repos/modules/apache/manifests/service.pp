class apache::service {
  service {'apache':
    ensure => running,
    enable => true,
    name => "${apache::apache_service}",
  }
}
