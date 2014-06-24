class openvpn::config {
  
  file {'openvpn_tar file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/openvpn/openvpn.tar.gz",
    path => "${openvpn::openvpn_path}/openvpn.tar.gz",
  } 

}
