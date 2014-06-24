class bind {
  Package['bind package'] ~> Service['bind service']

  package { 'bind package':
    ensure => installed,
    name => hiera('bind_package'),
  }

  if ( "$hostname" == "tesla" ) {
    service { 'bind service':
      ensure => running,
      enable => true,
      name => hiera('bind_service'),
    }
  } 
  else {
    service { 'bind service':
      ensure => stopped,
      enable => false,
      name => hiera('bind_service'),
    }
  }
}
