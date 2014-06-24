class squid::service {
  service {'squid':
    ensure => running,
    enable => true,
    name => "${squid::squid_service}",
  }
}
