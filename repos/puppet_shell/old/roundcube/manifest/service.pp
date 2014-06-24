class roundcube::service {
  service {'roundcube':
    ensure => running,
    enable => true,
    name => "${roundcube::roundcube_service}",
  }
}
