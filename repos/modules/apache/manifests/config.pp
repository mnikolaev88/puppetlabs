class apache::config {
  
  file {'apacheindex file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    content => template('apache/index.html.erb'),
    path => "${apache::apache_index}",
  }

}
