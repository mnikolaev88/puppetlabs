class plantilla::service {
  service {'plantilla':
    ensure => running,
    enable => true,
    name => "${plantilla::plantilla_service}",
  }
}
