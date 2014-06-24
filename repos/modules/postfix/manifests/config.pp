class postfix::config {
  
  File['master.cf file'] ->  File['main.cf file'] -> File['/etc/ssl', '/etc/ssl/postfix']
 
  file {'master.cf file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/postfix/master.cf",
    path => "${postfix::postfix_path}/master.cf",
  } 


  file {'main.cf file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    content => template('postfix/main.cf.erb'),
    path => "${postfix::postfix_path}/main.cf",
  } 


  file { [ '/etc/ssl', '/etc/ssl/postfix' ]:
    ensure => directory,
    owner  => root,
    group  => root,
    mode   => 755,
  }

}
