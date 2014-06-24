class dovecot::service {
  service {'dovecot':
    ensure => running,
    enable => true,
    name => "${dovecot::dovecot_service}",
  }
}
