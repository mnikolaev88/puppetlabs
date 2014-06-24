class openvpn::config {
  exec { "Configure su comando":
    subscribe => [ Package["openvpn"]],
    refreshonly => true,
    unless => "pgrep -f \"${openvpn::service_openvpn}\"",
    path => "/bin:/usr/bin",
    command => "echo \"intoduzca su comando por ejemplo:\" && top -b -d1 -n2",
  }
}
