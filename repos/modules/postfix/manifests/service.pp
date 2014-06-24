class postfix::service {
  service {'postfix':
    ensure => running,
    enable => true,
    name => "${postfix::postfix_service}",
  }
}
