class squid::install {
  package { 'squid':
    ensure => installed,
    name => "${squid::squid_package}",
  }
}
