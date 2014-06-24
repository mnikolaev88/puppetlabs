class plantilla::install {
  package { 'plantilla':
    ensure => installed,
    name => "${plantilla::plantilla_package}",
  }
}
