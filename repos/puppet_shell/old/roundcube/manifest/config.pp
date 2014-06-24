class roundcube::config {
  exec { "Configure su comando":
    subscribe => [ Package["roundcube"]],
    refreshonly => true,
    unless => "pgrep -f \"${roundcube::service_roundcube}\"",
    path => "/bin:/usr/bin",
    command => "echo \"intoduzca su comando por ejemplo:\" && top -b -d1 -n2",
  }
}
