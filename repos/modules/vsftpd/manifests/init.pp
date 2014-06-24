class vsftpd {
  Package['vsftpd package'] -> File['vsftpd.conf file'] -> File['user_list file'] -> File['ftpusers file'] ~> Service['vsftpd service']

  package { 'vsftpd package':
    ensure => installed,
    name => "vsftpd",
  }

  file {'vsftpd.conf file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0640,
    source => "puppet:///modules/vsftpd/vsftpd.conf",
    path => "/etc/vsftpd/vsftpd.conf",
  }

  file {'user_list file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0640,
    source => "puppet:///modules/vsftpd/user_list",
    path => "/etc/vsftpd/user_list",
  }

  file {'ftpusers file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0640,
    source => "puppet:///modules/vsftpd/ftpusers",
    path => "/etc/vsftpd/ftpusers",
  }

  service {'vsftpd service':
    ensure => running,
    name => "vsftpd",
  }
}
