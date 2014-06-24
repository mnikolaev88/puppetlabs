class plantilla::command {
  exec { "plantilla_comando":
    subscribe => [ Package["plantilla"]],
    refreshonly => true,
    unless => "pgrep -f \"${plantilla::service_plantilla}\"",
    path => "/bin:/usr/bin",
    command => "echo \"intoduzca su comando por ejemplo:\" && top -b -d1 -n2",
  }
}
