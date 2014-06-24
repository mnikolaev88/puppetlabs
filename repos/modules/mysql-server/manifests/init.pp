class mysql-server {
  Package['mysql-server package'] ~> Service['mysql-server service'] ~> Exec['rootpasswd']

  package { 'mysql-server package':
    ensure => installed,
    name => hiera('mysql_package'),
  }

  service {'mysql-server service':
    ensure => running,
    enable => true,
    name => hiera('mysql_service'),
  }

  exec { 'rootpasswd':
    subscribe => Package['mysql-server'],
    refreshonly => true,
    unless => "mysqladmin -uroot -pvincivinci status",
    path => "/bin:/usr/bin",
    command => "mysqladmin -uroot password vincivinci",
  }
}
