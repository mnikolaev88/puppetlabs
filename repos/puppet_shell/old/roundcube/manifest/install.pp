class roundcube::install {
  package { 'roundcube':
    ensure => installed,
    name => "${roundcube::roundcube_package}",
  }
}
