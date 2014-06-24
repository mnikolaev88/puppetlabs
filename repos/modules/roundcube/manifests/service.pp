class roundcube::service {
  service {'roundcube_apache':
    subscribe => Class['roundcube::config'],
    ensure => running,
    name => "${apache::apache_service}",
  }
}
