class openvpn::service {
  service {'openvpn':
    ensure => running,
    enable => true,
    name => "${openvpn::openvpn_service}",
  }
}
