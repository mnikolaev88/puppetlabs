class openvpn (
  $openvpn_package = hiera('openvpn_package'),
  $openvpn_service = hiera('openvpn_service'),
) {
  Class['openvpn::install'] ~> Class['openvpn::service'] -> Class['openvpn::config']
  
  include openvpn::install
  include openvpn::service
  include openvpn::config
}
