class squid::config {
  
  File['squid.conf file'] -> File['admins file'] -> File['users file'] -> File['squid_passwd file'] -> File['web_denegadas file'] -> File['palabras_denegadas file']

  file {'squid.conf file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    content => template('squid/squid.conf.erb'),
    path => "${squid::squid_path}/squid.conf.erb",
  } 

  file {'admins file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/squid/admins",
    path => "${squid::squid_path}/admins",
  } 

  file {'users file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/squid/users",
    path => "${squid::squid_path}/users",
  } 

  file {'squid_passwd file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/squid/squid_passwd",
    path => "${squid::squid_path}/squid_passwd",
  } 

  file {'palabras_denegadas file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/squid/palabras_denegadas",
    path => "${squid::squid_path}/palabras_denegadas",
  } 

  file {'web_denegadas file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/squid/web_denegadas",
    path => "${squid::squid_path}/web_denegadas",
  } 

}
