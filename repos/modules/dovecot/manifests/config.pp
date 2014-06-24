class dovecot::config {
  
  File['dovecot.conf file'] -> File['10-ssl.conf file'] -> File['10-mail.conf file'] -> File['10-master.conf file'] -> File['10-auth.conf file'] -> File['/etc/ssl', '/etc/ssl/dovecot']
 
  file {'dovecot.conf file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/dovecot/dovecot.conf",
    path => "${dovecot::dovecot_path}/dovecot.conf",
  } 

  file {'10-ssl.conf file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    content => template('dovecot/10-ssl.conf.erb'),
    path => "${dovecot::dovecot_path}/conf.d/10-ssl.conf",
  } 

  file {'10-mail.conf file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/dovecot/10-mail.conf",
    path => "${dovecot::dovecot_path}/conf.d/10-mail.conf",
  } 

  file {'10-master.conf file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/dovecot/10-master.conf",
    path => "${dovecot::dovecot_path}/conf.d/10-master.conf",
  } 

  file {'10-auth.conf file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/dovecot/10-auth.conf",
    path => "${dovecot::dovecot_path}/conf.d/10-auth.conf",
  } 

  file {'/etc/ssl/dovecot':
    ensure => directory,
    owner  => root,
    group  => root,
    mode   => 755,
  }

}
