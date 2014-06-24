class openvpn (
  $openvpn_package = hiera('openvpn_package'),
  $openvpn_service = hiera('openvpn_service'),
  $openvpn_path = hiera('openvpn_path'),
) {
  Class['openvpn::install'] ~> Class['openvpn::config'] ~> Class['openvpn::command'] ~> Class['openvpn::service']
  
  include openvpn::install
  include openvpn::config
  include openvpn::command
  include openvpn::service
  include openssl
}
