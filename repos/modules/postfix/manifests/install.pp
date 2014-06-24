class postfix::install {
  package { 'postfix':
    ensure => installed,
    name => "${postfix::postfix_package}",
    require => Class['openssl'],
  }
  include openssl
}
