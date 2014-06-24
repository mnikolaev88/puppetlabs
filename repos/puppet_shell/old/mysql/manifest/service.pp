class mysql::service {
  service {'mysql':
    ensure => running,
    enable => true,
    name => "${mysql::mysql_service}",
  }
}
