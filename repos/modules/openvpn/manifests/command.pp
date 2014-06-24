class openvpn::command {
  exec { "openvpn_extract":
    path => "/bin:/usr/bin",
    command => "tar -xzf ${openvpn::openvpn_path}/openvpn.tar.gz -C /etc",
  }
}
