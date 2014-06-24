class plantilla::config {
  file {'plantilla file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/plantilla/miconfiguracion",
    content => template('plantilla/embded_ruby.erb'),
    path => "${plantilla::plantilla_path}",
  } 
}
