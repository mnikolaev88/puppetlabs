class squid::config {
  exec { "Configure su comando":
    subscribe => [ Package["squid"]],
    refreshonly => true,
    unless => "pgrep -f \"${squid::service_squid}\"",
    path => "/bin:/usr/bin",
    command => "echo \"intoduzca su comando por ejemplo:\" && top -b -d1 -n2",
  }
}
