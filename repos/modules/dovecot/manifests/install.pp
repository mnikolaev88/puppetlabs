class dovecot::install {
  package { 'dovecot':
    ensure => installed,
    name => "${dovecot::dovecot_package}",
    require => Class['openssl'],
  }
  include openssl
}
