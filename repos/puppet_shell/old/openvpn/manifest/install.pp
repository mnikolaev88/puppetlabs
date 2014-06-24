class openvpn::install {
  package { 'openvpn':
    ensure => installed,
    name => "${openvpn::openvpn_package}",
  }
}
